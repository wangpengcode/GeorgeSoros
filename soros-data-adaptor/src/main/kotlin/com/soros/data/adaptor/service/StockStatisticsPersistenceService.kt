package com.soros.data.adaptor.service

import com.soros.data.adaptor.entity.StockStatisticsEntity
import com.soros.data.adaptor.repository.StockStatisticsRepository
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.stereotype.Service

@Service
class StockStatisticsPersistenceService(
        val stockInfoRepository: StockStatisticsRepository
) {
    fun saveAll(entities: List<StockStatisticsEntity>) = try {
        entities.chunked(100).forEach {
            stockInfoRepository.saveAll(it)
        }
    } catch (e: Exception) {
        logger.error("saveAll error", e)
    }

    fun save(entity: StockStatisticsEntity) = try {
        stockInfoRepository.save(entity)
    } catch (e: Exception) {
        logger.error("#save error:", e)
    }

    fun findByStockNo(stockNo: String): StockStatisticsEntity? {
        return stockInfoRepository.findByStockNo(stockNo)
    }

    fun queryAll(): List<StockStatisticsEntity>? = try {
        stockInfoRepository.findAll().toList()
    } catch (e: Exception) {
        logger.error("#queryAll error", e)
        null
    }

    companion object {
        val logger: Logger = LoggerFactory.getLogger(StockStatisticsPersistenceService::class.java)
    }
}