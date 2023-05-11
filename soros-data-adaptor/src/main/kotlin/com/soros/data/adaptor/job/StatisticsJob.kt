package com.soros.data.adaptor.job

import com.soros.data.adaptor.common.Commons.Companion.SCALE_OF_SOROS
import com.soros.data.adaptor.domain.bo.MarketMacroscopicDomainBo
import com.soros.data.adaptor.domain.bo.StockStatisticsDomainBo
import com.soros.data.adaptor.domain.bo.StockStatisticsMacroscopicDomainBo
import com.soros.data.adaptor.domain.bo.StockStatisticsMonthDomainBo
import com.soros.data.adaptor.entity.StockHistoryEntity
import com.soros.data.adaptor.entity.StockStatisticsEntity
import com.soros.data.adaptor.enums.DataTypeEnum
import com.soros.data.adaptor.extension.fromJson
import com.soros.data.adaptor.service.StockHistoryPersistenceService
import com.soros.data.adaptor.service.StockIndexPersistenceService
import com.soros.data.adaptor.service.StockInfoPersistenceService
import com.soros.data.adaptor.service.StockStatisticsPersistenceService
import com.soros.data.adaptor.transformer.toStockStatisticsDomainBo
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
import java.util.stream.Collectors
import kotlin.collections.HashMap
import kotlin.streams.toList

@Suppress("NOT_NULL_ASSERTION_ON_CALLABLE_REFERENCE")
@Service
class StatisticsJob(
        val service: StockStatisticsPersistenceService,
        val stockInfo: StockInfoPersistenceService,
        val indexInfo: StockIndexPersistenceService,
        val history: StockHistoryPersistenceService
) {

    private val cacheData = HashMap<String, MarketMacroscopicDomainBo>()
    private var shIndex: List<StockHistoryEntity>? = history.findByStockNo(SH_INDEX_CODE)
    private var szIndex: List<StockHistoryEntity>? = history.findByStockNo(SZ_INDEX_CODE)

    @Scheduled(cron = "#{@statisticsJobCron}")
    fun statisticsHistoryJob() {
        logger.info("hello this is statisticsHistoryJob")
        stockInfo.queryAll()?.forEach {
            handleStatistic(it.code, DataTypeEnum.STOCK)
        }
        indexInfo.queryAll()?.forEach {
            handleStatistic(it.code, DataTypeEnum.INDEX)
        }
        service.queryAll()
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
            val averagePrice = preHistory.stream().map { it.close!! }.reduce(BigDecimal.ZERO, BigDecimal::add).divide(totalNumber, SCALE_OF_SOROS, RoundingMode.HALF_EVEN)
            val averageVolume = preHistory.stream().map { it.volume!! }.reduce(BigDecimal.ZERO, BigDecimal::add)!!.divide(totalNumber, SCALE_OF_SOROS, RoundingMode.HALF_EVEN)
            val overPriceIndex = BigDecimal(preHistory.stream().filter { it.close!! > averagePrice }.toList().size).divide(totalNumber, SCALE_OF_SOROS, RoundingMode.HALF_EVEN)
            val overVolumeIndex = BigDecimal(preHistory.stream().filter { it.volume!! > averageVolume }.toList().size).divide(totalNumber, SCALE_OF_SOROS, RoundingMode.HALF_EVEN)
            val macroscopicDomainBo = StockStatisticsMacroscopicDomainBo(
                    date = h.date,
                    averagePrice = averagePrice,
                    averageVolume = averageVolume,
                    averageFlat = BigDecimal(preHistory.stream().filter { it.zdAmount == BigDecimal.ZERO }.toList().size).divide(totalNumber, SCALE_OF_SOROS, RoundingMode.HALF_EVEN),
                    averageProfit = BigDecimal(preHistory.stream().filter { it.zdAmount!! > BigDecimal.ZERO }.toList().size).divide(totalNumber, SCALE_OF_SOROS, RoundingMode.HALF_EVEN),
                    averageLoss = BigDecimal(preHistory.stream().filter { it.zdAmount!! < BigDecimal.ZERO }.toList().size).divide(totalNumber, SCALE_OF_SOROS, RoundingMode.HALF_EVEN),
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
        }
        val historyForMonth = histories.stream().map { it.apply { date = date.substring(5, 7) } }.collect(Collectors.groupingBy { it.date })
        val historyForMonthBo = mutableListOf<StockStatisticsMonthDomainBo>()
        for (i in historyForMonth) {
            val averagePrice = i.value.stream().map { it.close!! }.reduce(BigDecimal.ZERO, BigDecimal::add).divide(BigDecimal(i.value.size), SCALE_OF_SOROS, RoundingMode.HALF_EVEN)
            val averageVolume = i.value.stream().map { it.volume!! }.reduce(BigDecimal.ZERO, BigDecimal::add).divide(BigDecimal(i.value.size), SCALE_OF_SOROS, RoundingMode.HALF_EVEN)
            val bo = StockStatisticsMonthDomainBo(
                    month = i.key,
                    averagePrice = averagePrice,
                    averageVolume = averageVolume,
                    averageFlat = BigDecimal(i.value.stream().filter { it.zdAmount == BigDecimal.ZERO }.toList().size).divide(BigDecimal(i.value.size), SCALE_OF_SOROS, RoundingMode.HALF_EVEN),
                    averageProfit = BigDecimal(i.value.stream().filter { it.zdAmount!! > BigDecimal.ZERO }.toList().size).divide(BigDecimal(i.value.size), SCALE_OF_SOROS, RoundingMode.HALF_EVEN),
                    averageLoss = BigDecimal(i.value.stream().filter { it.zdAmount!! < BigDecimal.ZERO }.toList().size).divide(BigDecimal(i.value.size), SCALE_OF_SOROS, RoundingMode.HALF_EVEN),
                    overAveragePriceIndex = BigDecimal(i.value.stream().filter { it.close!! > averagePrice }.toList().size).divide(BigDecimal(i.value.size), SCALE_OF_SOROS, RoundingMode.HALF_EVEN),
                    overAverageVolumeIndex = BigDecimal(i.value.stream().filter { it.volume!! > averageVolume }.toList().size).divide(BigDecimal(i.value.size), SCALE_OF_SOROS, RoundingMode.HALF_EVEN)
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

    fun handleMarketStock(statistics: List<StockStatisticsEntity>?) {
        if (CollectionUtils.isEmpty(statistics)) {
            return
        }
        val codeMap: Map<String, List<StockStatisticsEntity>> = statistics!!.stream().collect(Collectors.groupingBy { it.code })
        val totalMap: MutableMap<String,Int> = HashMap()
        val profitMap: MutableMap<String,Int> = HashMap()
        val lossMap: MutableMap<String,Int> = HashMap()
        for (i in codeMap) {
            if (CollectionUtils.isEmpty(i.value)) {
                continue
            }
            val usedList = i.value.stream().filter { it.type == DataTypeEnum.STOCK.name && (Objects.nonNull(it.macroscopicIndex)) }.toList()
            if (CollectionUtils.isEmpty(usedList)) {
                continue
            }
            val domainBoList = usedList.stream().map { it.macroscopicIndex!!.fromJson<StockStatisticsMacroscopicDomainBo>() }.toList()
            for (j in domainBoList) {
                if (totalMap[j.date] == null) {
                    totalMap[j.date] = 1
                } else {
                    totalMap[j.date] = 1 + totalMap[j.date]!!
                }
                if (BigDecimal.ZERO < j.currentStockPrice) {
                    if (profitMap[j.date] == null) {
                        profitMap[j.date] = 1
                    } else {
                        profitMap[j.date] = 1 + profitMap[j.date]!!
                    }
                }
                if (BigDecimal.ZERO > j.currentStockPrice) {
                    if (lossMap[j.date] == null) {
                        lossMap[j.date] = 1
                    } else {
                        lossMap[j.date] = 1 + lossMap[j.date]!!
                    }
                }
            }
        }

        for (i in codeMap) {
            if (CollectionUtils.isEmpty(i.value)) {
                continue
            }
            val usedList = i.value.stream().filter { it.type == DataTypeEnum.STOCK.name && (Objects.nonNull(it.macroscopicIndex)) }.toList()
            if (CollectionUtils.isEmpty(usedList)) {
                continue
            }
        }
    }

    companion object {
        val logger: Logger = LoggerFactory.getLogger(StatisticsJob::class.java)
        val SH_INDEX_CODE = "sh000001"
        val SZ_INDEX_CODE = "sz399001"
    }
}