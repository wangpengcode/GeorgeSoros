package com.soros.data.adaptor.job

import com.soros.data.adaptor.entity.MarketEntity
import com.soros.data.adaptor.entity.StockHistoryEntity
import com.soros.data.adaptor.extension.toMarketEntity
import com.soros.data.adaptor.service.MarketHistoryPersistenceService
import com.soros.data.adaptor.service.StockHistoryPersistenceService
import com.soros.data.adaptor.service.StockIndexPersistenceService
import com.soros.data.adaptor.service.StockInfoPersistenceService
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.scheduling.annotation.Scheduled
import org.springframework.stereotype.Service

@Service
class MarketHistoryJob(
        val stockInfo: StockInfoPersistenceService,
        val indexInfo: StockIndexPersistenceService,
        val history: StockHistoryPersistenceService,
        val marketHistoryPersistenceService: MarketHistoryPersistenceService
) {

    private var shIndex: List<StockHistoryEntity>? = history.findByStockNo(SH_INDEX_CODE)
    private var szIndex: List<StockHistoryEntity>? = history.findByStockNo(SZ_INDEX_CODE)

    @Scheduled(cron = "#{@marketHistoryJobCron}")
    fun market() {
        szIndex?.sortedBy { it.date }?.forEach { outer ->
            val date = outer.date
            logger.info("market# date $date")
            val historyByDate = mutableListOf<StockHistoryEntity>()
            stockInfo.queryAll()?.forEach { inner ->
                history.findByCodeAndDate(inner.code,date)?.let {
                    its -> historyByDate.add(its)
                }
            }
            val market = historyByDate.toMarketEntity()?.let {
                marketHistoryPersistenceService.save(it)
            }
        }
    }

    companion object {
        val logger: Logger = LoggerFactory.getLogger(StatisticsJob::class.java)
        val SH_INDEX_CODE = "sh000001"
        val SZ_INDEX_CODE = "sz399001"
    }
}