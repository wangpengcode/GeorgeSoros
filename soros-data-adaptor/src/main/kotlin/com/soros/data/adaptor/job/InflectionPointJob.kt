package com.soros.data.adaptor.job

import com.soros.data.adaptor.service.StockHistoryPersistenceService
import com.soros.data.adaptor.service.StockIndexPersistenceService
import com.soros.data.adaptor.service.StockInflectionPointPersistenceService
import com.soros.data.adaptor.service.StockInfoPersistenceService
import com.soros.data.adaptor.transformer.toStockInflectionPointEntity
import com.soros.data.adaptor.transformer.toStockWaveBo
import com.soros.data.adaptor.utils.findInflectionPoint
import com.soros.data.adaptor.utils.findPeekAndValley
import com.soros.data.adaptor.utils.merge
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.scheduling.annotation.Scheduled
import org.springframework.stereotype.Service

@Service
class InflectionPointJob(
        val stockInfo: StockInfoPersistenceService,
        val indexInfo: StockIndexPersistenceService,
        val history: StockHistoryPersistenceService,
        val inflectionPointService: StockInflectionPointPersistenceService
) {

    @Scheduled(cron = "#{@inflectionPointJobCron}")
    fun inflectionJob() {
        stockInfo.queryAll()?.forEach {
            try {
                logger.info("InflectionPointJob#stockInfo save ${it.code}")
                val histories = history.findByStockNo(it.code)
                val entities = histories?.map { it.toStockWaveBo() }?.findInflectionPoint(6)?.merge()?.findPeekAndValley()?.map { it.toStockInflectionPointEntity() }
                entities?.let { inflectionPointService.saveAll(it) }
            } catch (e: Exception) {
                logger.error("InflectionPointJob#stockInfo save error", e)
            }
        }

        indexInfo.queryAll()?.forEach {
            try {
                logger.info("InflectionPointJob#stockInfo save ${it.code}")
                val histories = history.findByStockNo(it.code)
                val entities = histories?.map { it.toStockWaveBo() }?.findInflectionPoint(6)?.merge()?.findPeekAndValley()?.map { it.toStockInflectionPointEntity() }
                entities?.let { inflectionPointService.saveAll(it) }
            } catch (e: Exception) {
                logger.error("InflectionPointJob#indexInfo save error", e)
            }
        }
    }

    companion object {
        val logger: Logger = LoggerFactory.getLogger(InflectionPointJob::class.java)
    }
}