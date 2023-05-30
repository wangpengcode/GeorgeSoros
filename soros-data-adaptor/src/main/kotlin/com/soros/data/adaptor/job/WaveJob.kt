package com.soros.data.adaptor.job

import com.soros.data.adaptor.config.WaveJobConfiguration
import com.soros.data.adaptor.entity.StockHistoryEntity
import com.soros.data.adaptor.enums.DataTypeEnum
import com.soros.data.adaptor.service.StockHistoryPersistenceService
import com.soros.data.adaptor.service.StockIndexPersistenceService
import com.soros.data.adaptor.service.StockInfoPersistenceService
import com.soros.data.adaptor.service.StockWavePersistenceService
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.scheduling.annotation.Async
import org.springframework.scheduling.annotation.Scheduled
import org.springframework.stereotype.Service
import org.springframework.util.CollectionUtils

@Service
class WaveJob(
        val stockInfo: StockInfoPersistenceService,
        val indexInfo: StockIndexPersistenceService,
        val history: StockHistoryPersistenceService,
        val configuration: WaveJobConfiguration,
        val waveService: StockWavePersistenceService
) {

//    @Scheduled(cron = "#{@waveJobCron}")
    fun waveJob() {
        logger.info("hello this is waveJob")
        stockInfo.queryAll()?.forEach {
            handleHistoryWave(it.code, DataTypeEnum.STOCK)
        }
        indexInfo.queryAll()?.forEach {
            handleHistoryWave(it.code, DataTypeEnum.INDEX)
        }
    }

//    @Async(value = "async2Executor")
    fun handleHistoryWave(code: String, type: DataTypeEnum) {
        try {
            logger.info("#handleHistoryWave with code {}", code)
            val histories = history.findByStockNo(code)?.let { it -> it.sortedBy { it.date } }
            if (CollectionUtils.isEmpty(histories)) {
                return
            }
            val maxEndDate = waveService.findMaxEndDateByStockNo(code)
            val lastHistories: List<StockHistoryEntity>? = maxEndDate?.let { histories!!.filter { it.date > maxEndDate } }
            if (CollectionUtils.isEmpty(lastHistories)) {
                return
            }

        } catch (e: Exception) {
            logger.error("#handleHistoryWave#error code {}", code, e)
        }
    }

    companion object {
        val logger: Logger = LoggerFactory.getLogger(WaveJob::class.java)
    }
}