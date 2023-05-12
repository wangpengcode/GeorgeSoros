package com.soros.data.adaptor.job

import com.soros.data.adaptor.common.Commons.Companion.SCALE_OF_SOROS
import com.soros.data.adaptor.domain.bo.StockStatisticsDomainBo
import com.soros.data.adaptor.domain.bo.StockStatisticsMacroscopicDomainBo
import com.soros.data.adaptor.domain.bo.StockStatisticsMonthDomainBo
import com.soros.data.adaptor.entity.StockHistoryEntity
import com.soros.data.adaptor.entity.StockStatisticsEntity
import com.soros.data.adaptor.enums.DataTypeEnum
import com.soros.data.adaptor.extension.fromListJson
import com.soros.data.adaptor.extension.toJson
import com.soros.data.adaptor.service.StockHistoryPersistenceService
import com.soros.data.adaptor.service.StockIndexPersistenceService
import com.soros.data.adaptor.service.StockInfoPersistenceService
import com.soros.data.adaptor.service.StockStatisticsPersistenceService
import com.soros.data.adaptor.transformer.toStockStatisticsEntity
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.scheduling.annotation.Async
import org.springframework.scheduling.annotation.Scheduled
import org.springframework.stereotype.Service
import org.springframework.util.CollectionUtils
import org.springframework.util.StringUtils
import java.math.BigDecimal
import java.math.RoundingMode
import java.time.LocalDateTime
import java.util.*
import java.util.concurrent.ConcurrentHashMap
import java.util.stream.Collectors
import kotlin.streams.toList

@Suppress("NOT_NULL_ASSERTION_ON_CALLABLE_REFERENCE")
@Service
class StatisticsJob(
        val service: StockStatisticsPersistenceService,
        val stockInfo: StockInfoPersistenceService,
        val indexInfo: StockIndexPersistenceService,
        val history: StockHistoryPersistenceService
) {

    private var shIndex: List<StockHistoryEntity>? = history.findByStockNo(SH_INDEX_CODE)
    private var szIndex: List<StockHistoryEntity>? = history.findByStockNo(SZ_INDEX_CODE)
    private val totalMap: MutableMap<String, Int> = ConcurrentHashMap()
    private val profitMap: MutableMap<String, Int> = ConcurrentHashMap()
    private val lossMap: MutableMap<String, Int> = ConcurrentHashMap()

    @Scheduled(cron = "#{@statisticsJobCron}")
    fun statisticsHistoryJob() {
        logger.info("hello this is statisticsHistoryJob")
        stockInfo.queryAll()?.forEach {
            handleStatistic(it.code, DataTypeEnum.STOCK)
        }
        indexInfo.queryAll()?.forEach {
            handleStatistic(it.code, DataTypeEnum.INDEX)
        }
        stockInfo.queryAll()?.forEach {
            service.findByStockNo(it.code)?.let { it -> handleMarketStock(it) }
        }
    }

    @Async(value = "asyncExecutor")
    fun handleStatistic(code: String, type: DataTypeEnum) {
        val start = LocalDateTime.now().second
        logger.info("StatisticsJob#handleStatistic start calculate $code}")
        val histories = history.findByStockNo(code)?.sortedBy { it.date }
        if (CollectionUtils.isEmpty(histories)) {
            return
        }
        val macroscopicDomainBoList = mutableListOf<StockStatisticsMacroscopicDomainBo>()
        for (h in histories!!) {
            val preHistory = histories.filter { it.date < h.date && (it.close != null) }
            if (CollectionUtils.isEmpty(preHistory)) {
                continue
            }
            val totalNumber = BigDecimal(preHistory.size)
            val averagePrice = preHistory.stream().map { it.close!! }.reduce(BigDecimal.ZERO, BigDecimal::add).divide(totalNumber, SCALE_OF_SOROS, RoundingMode.HALF_EVEN).stripTrailingZeros()
            val averageVolume = preHistory.stream().map { it.volume!! }.reduce(BigDecimal.ZERO, BigDecimal::add)!!.divide(totalNumber, SCALE_OF_SOROS, RoundingMode.HALF_EVEN).stripTrailingZeros()
            val overPriceIndex = BigDecimal(preHistory.stream().filter { it.close!! > averagePrice }.toList().size).divide(totalNumber, SCALE_OF_SOROS, RoundingMode.HALF_EVEN).stripTrailingZeros()
            val overVolumeIndex = BigDecimal(preHistory.stream().filter { it.volume!! > averageVolume }.toList().size).divide(totalNumber, SCALE_OF_SOROS, RoundingMode.HALF_EVEN).stripTrailingZeros()
            val macroscopicDomainBo = StockStatisticsMacroscopicDomainBo(
                    date = h.date,
                    averagePrice = averagePrice,
                    averageVolume = averageVolume,
                    averageFlat = BigDecimal(preHistory.stream().filter { it.zdAmount == BigDecimal.ZERO }.toList().size).divide(totalNumber, SCALE_OF_SOROS, RoundingMode.HALF_EVEN).stripTrailingZeros(),
                    averageProfit = BigDecimal(preHistory.stream().filter { it.zdAmount!! > BigDecimal.ZERO }.toList().size).divide(totalNumber, SCALE_OF_SOROS, RoundingMode.HALF_EVEN).stripTrailingZeros(),
                    averageLoss = BigDecimal(preHistory.stream().filter { it.zdAmount!! < BigDecimal.ZERO }.toList().size).divide(totalNumber, SCALE_OF_SOROS, RoundingMode.HALF_EVEN).stripTrailingZeros(),
                    overAveragePriceIndex = overPriceIndex,
                    overAverageVolumeIndex = overVolumeIndex,
                    currentStockPrice = if (Objects.isNull(h.close)) BigDecimal.ZERO else h.close!!,
                    currentStockZdRange = if (Objects.isNull(h.zdRange)) BigDecimal.ZERO else h.zdRange!!,
                    marketShangHaiAmount = if (CollectionUtils.isEmpty(shIndex)) BigDecimal.ZERO else shIndex!!.filter { it.date == h.date }.map { it.totalAmount!! }[0],
                    marketShangHaiZdRange = if (CollectionUtils.isEmpty(shIndex)) BigDecimal.ZERO else shIndex!!.filter { it.date == h.date }.map { it.zdRange!! }[0],
                    marketShenZhenAmount = if (CollectionUtils.isEmpty(szIndex)) BigDecimal.ZERO else szIndex!!.filter { it.date == h.date }.map { it.totalAmount!! }[0],
                    marketShenZhenZdRange = if (CollectionUtils.isEmpty(szIndex)) BigDecimal.ZERO else szIndex!!.filter { it.date == h.date }.map { it.zdRange!! }[0],
            )
            macroscopicDomainBoList.add(macroscopicDomainBo)
            if (totalMap[h.date] == null) {
                totalMap[h.date] = 1
            } else {
                totalMap[h.date] = 1 + totalMap[h.date]!!
            }
            if (BigDecimal.ZERO < macroscopicDomainBo.currentStockPrice) {
                if (profitMap[h.date] == null) {
                    profitMap[h.date] = 1
                } else {
                    profitMap[h.date] = 1 + profitMap[h.date]!!
                }
            }
            if (BigDecimal.ZERO > macroscopicDomainBo.currentStockPrice) {
                if (lossMap[h.date] == null) {
                    lossMap[h.date] = 1
                } else {
                    lossMap[h.date] = 1 + lossMap[h.date]!!
                }
            }
        }
        val historyForMonth = histories.stream().map { it.apply { date = date.substring(5, 7) } }.collect(Collectors.groupingBy { it.date })
        val historyForMonthBo = mutableListOf<StockStatisticsMonthDomainBo>()
        for (i in historyForMonth) {
            val averagePrice = i.value.stream().map { it.close!! }.reduce(BigDecimal.ZERO, BigDecimal::add).divide(BigDecimal(i.value.size), SCALE_OF_SOROS, RoundingMode.HALF_EVEN).stripTrailingZeros()
            val averageVolume = i.value.stream().map { it.volume!! }.reduce(BigDecimal.ZERO, BigDecimal::add).divide(BigDecimal(i.value.size), SCALE_OF_SOROS, RoundingMode.HALF_EVEN).stripTrailingZeros()
            val bo = StockStatisticsMonthDomainBo(
                    month = i.key,
                    averagePrice = averagePrice,
                    averageVolume = averageVolume,
                    averageFlat = BigDecimal(i.value.stream().filter { it.zdAmount == BigDecimal.ZERO }.toList().size).divide(BigDecimal(i.value.size), SCALE_OF_SOROS, RoundingMode.HALF_EVEN).stripTrailingZeros(),
                    averageProfit = BigDecimal(i.value.stream().filter { it.zdAmount!! > BigDecimal.ZERO }.toList().size).divide(BigDecimal(i.value.size), SCALE_OF_SOROS, RoundingMode.HALF_EVEN).stripTrailingZeros(),
                    averageLoss = BigDecimal(i.value.stream().filter { it.zdAmount!! < BigDecimal.ZERO }.toList().size).divide(BigDecimal(i.value.size), SCALE_OF_SOROS, RoundingMode.HALF_EVEN).stripTrailingZeros(),
                    overAveragePriceIndex = BigDecimal(i.value.stream().filter { it.close!! > averagePrice }.toList().size).divide(BigDecimal(i.value.size), SCALE_OF_SOROS, RoundingMode.HALF_EVEN).stripTrailingZeros(),
                    overAverageVolumeIndex = BigDecimal(i.value.stream().filter { it.volume!! > averageVolume }.toList().size).divide(BigDecimal(i.value.size), SCALE_OF_SOROS, RoundingMode.HALF_EVEN).stripTrailingZeros()
            )
            historyForMonthBo.add(bo)
        }
        service.save(StockStatisticsDomainBo(
                code = code,
                type = type.name,
                macroscopicDomainBo = macroscopicDomainBoList,
                monthDomainBo = historyForMonthBo
        ).toStockStatisticsEntity())
    }

    fun handleMarketStock(statistics: StockStatisticsEntity) {
        logger.info("handleMarketStock code = ${statistics.code}")
        if (StringUtils.isEmpty(statistics.macroscopicIndex)) {
            return
        }
        val rawList: List<StockStatisticsMacroscopicDomainBo> = statistics.macroscopicMonthIndex!!.fromListJson(StockStatisticsMacroscopicDomainBo::class.java)
        val newList = rawList.stream().map { it3 ->
            it3.marketTotalStock = if (Objects.nonNull(totalMap[it3.date])) totalMap[it3.date]!! else 0
            it3.marketLossStock = if (Objects.nonNull(lossMap[it3.date])) lossMap[it3.date]!! else 0
            it3.marketProfitStock = if (Objects.nonNull(profitMap[it3.date])) profitMap[it3.date]!! else 0
            it3.marketProfitRate = BigDecimal(it3.marketProfitStock).divide(BigDecimal(it3.marketTotalStock), SCALE_OF_SOROS, RoundingMode.HALF_EVEN).stripTrailingZeros()
        }.toList()

        statistics.apply {
            macroscopicMonthIndex = newList.toJson()
        }
        service.save(statistics)
    }

    companion object {
        val logger: Logger = LoggerFactory.getLogger(StatisticsJob::class.java)
        val SH_INDEX_CODE = "sh000001"
        val SZ_INDEX_CODE = "sz399001"
    }
}