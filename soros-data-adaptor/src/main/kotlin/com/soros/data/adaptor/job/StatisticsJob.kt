package com.soros.data.adaptor.job

import com.soros.data.adaptor.service.StockStatisticsPersistenceService
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.scheduling.annotation.Scheduled
import org.springframework.stereotype.Service

@Service
class StatisticsJob(
        val service: StockStatisticsPersistenceService
) {

    @Scheduled(cron = "#{@statisticsJobCron}")
    fun statisticsJob() {
        logger.info("hello this is statisticsJob")
    }

    companion object {
        val logger: Logger = LoggerFactory.getLogger(StatisticsJob::class.java)
    }
}