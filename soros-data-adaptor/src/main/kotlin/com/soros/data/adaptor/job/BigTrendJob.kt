package com.soros.data.adaptor.job

import com.soros.data.adaptor.config.WaveJobConfiguration
import com.soros.data.adaptor.enums.DataTypeEnum
import com.soros.data.adaptor.extension.toBigTrendEntity
import com.soros.data.adaptor.service.*
import com.soros.data.adaptor.transformer.toStockWaveBo
import com.soros.data.adaptor.utils.*
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.scheduling.annotation.Scheduled
import org.springframework.stereotype.Service

@Service
class BigTrendJob(
        val stockInfo: StockInfoPersistenceService,
        val indexInfo: StockIndexPersistenceService,
        val history: StockHistoryPersistenceService,
        val configuration: WaveJobConfiguration,
        val bigTrendService: BigTrendPersistenceService,
) {

    @Scheduled(cron = "#{@bigTrendJobCron}")
    fun bigTrendJob() {
        logger.info("hello this is bigTrendJob")
        stockInfo.queryAll()?.forEach {
            handleBigTrend(it.code, DataTypeEnum.STOCK)
        }
        indexInfo.queryAll()?.forEach {
            handleBigTrend(it.code, DataTypeEnum.INDEX)
        }
    }


    fun handleBigTrend(code: String, type: DataTypeEnum) {
        logger.error("#handleBigTrend#start code {}", code)
        try {
            val histories = history.findByStockNo(code)
            val bigTrends = histories?.map { it.toStockWaveBo() }?.findInflectionPoint(6)
                    ?.merge()?.findPeekAndValley()?.littleTrend()
                    ?.bigTrend()?.map { it.toBigTrendEntity(type.name) }?.toList()
            bigTrends?.let { bigTrendService.saveAll(it) }
        } catch (e: Exception) {
            logger.error("#handleBigTrend#error code {}", code, e)
        }
    }

    companion object {
        val logger: Logger = LoggerFactory.getLogger(BigTrendJob::class.java)
    }
}