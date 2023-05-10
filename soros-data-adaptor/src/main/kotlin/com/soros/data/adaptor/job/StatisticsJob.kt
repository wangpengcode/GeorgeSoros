package com.soros.data.adaptor.job

import com.soros.data.adaptor.common.Commons.Companion.SCALE_OF_SOROS
import com.soros.data.adaptor.domain.bo.StockStatisticsMacroscopicDomainBo
import com.soros.data.adaptor.domain.bo.StockStatisticsMonthDomainBo
import com.soros.data.adaptor.entity.StockInfoEntity
import com.soros.data.adaptor.enums.DataTypeEnum
import com.soros.data.adaptor.service.StockHistoryPersistenceService
import com.soros.data.adaptor.service.StockIndexPersistenceService
import com.soros.data.adaptor.service.StockInfoPersistenceService
import com.soros.data.adaptor.service.StockStatisticsPersistenceService
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.scheduling.annotation.Async
import org.springframework.scheduling.annotation.Scheduled
import org.springframework.stereotype.Service
import org.springframework.util.CollectionUtils
import java.math.BigDecimal
import java.math.RoundingMode
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

    @Scheduled(cron = "#{@statisticsJobCron}")
    fun statisticsJob() {
        logger.info("hello this is statisticsJob")
        stockInfo.queryAll()?.forEach {
            handleStatistic(it, DataTypeEnum.STOCK)
        }
    }

    @Async(value = "asyncExecutor")
    fun handleStatistic(stockInfo: StockInfoEntity, type: DataTypeEnum) {
        logger.info("StatisticsJob#handleStatistic start calculate ${stockInfo.code}")
        val histories = history.findByStockNo(stockInfo.code)?.sortedBy { it.date }
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
                    averageFlat = BigDecimal(preHistory.stream().map { it.zdAmount == BigDecimal.ZERO }.toList().size).divide(totalNumber, SCALE_OF_SOROS, RoundingMode.HALF_EVEN),
                    averageProfit = BigDecimal(preHistory.stream().map { it.zdAmount!! > BigDecimal.ZERO }.toList().size).divide(totalNumber, SCALE_OF_SOROS, RoundingMode.HALF_EVEN),
                    averageLoss = BigDecimal(preHistory.stream().map { it.zdAmount!! < BigDecimal.ZERO }.toList().size).divide(totalNumber, SCALE_OF_SOROS, RoundingMode.HALF_EVEN),
                    overAveragePriceIndex = overPriceIndex,
                    overAverageVolumeIndex = overVolumeIndex
            )
            macroscopicDomainBoList.add(macroscopicDomainBo)
        }
        val historyForMonth = histories.stream().map { it.apply { date = date.substring(5, 6) } }.collect(Collectors.groupingBy { it.date })
        val historyForMonthBo = mutableListOf<StockStatisticsMonthDomainBo>()
        for (i in historyForMonth) {
            val averagePrice = i.value.stream().map { it.close!! }.reduce(BigDecimal.ZERO, BigDecimal::add).divide(BigDecimal(i.value.size), SCALE_OF_SOROS, RoundingMode.HALF_EVEN)
            val averageVolume = i.value.stream().map { it.volume!! }.reduce(BigDecimal.ZERO, BigDecimal::add).divide(BigDecimal(i.value.size), SCALE_OF_SOROS, RoundingMode.HALF_EVEN)
            val bo = StockStatisticsMonthDomainBo(
                    month = i.key,
                    averagePrice = averagePrice,
                    averageVolume = averageVolume,
                    averageFlat = BigDecimal(i.value.stream().filter { it.close == BigDecimal.ZERO }.toList().size).divide(BigDecimal(i.value.size), SCALE_OF_SOROS, RoundingMode.HALF_EVEN),
                    averageProfit = BigDecimal(i.value.stream().filter { it.close!! > BigDecimal.ZERO }.toList().size).divide(BigDecimal(i.value.size), SCALE_OF_SOROS, RoundingMode.HALF_EVEN),
                    averageLoss = BigDecimal(i.value.stream().filter { it.close!! < BigDecimal.ZERO }.toList().size).divide(BigDecimal(i.value.size), SCALE_OF_SOROS, RoundingMode.HALF_EVEN),
                    overAveragePriceIndex = BigDecimal(i.value.stream().filter { it.close!! > averagePrice }.toList().size).divide(BigDecimal(i.value.size), SCALE_OF_SOROS, RoundingMode.HALF_EVEN),
                    overAverageVolumeIndex = BigDecimal(i.value.stream().filter { it.volume!! > averageVolume }.toList().size).divide(BigDecimal(i.value.size), SCALE_OF_SOROS, RoundingMode.HALF_EVEN)
            )
            historyForMonthBo.add(bo)
        }
    }

    companion object {
        val logger: Logger = LoggerFactory.getLogger(StatisticsJob::class.java)
    }
}