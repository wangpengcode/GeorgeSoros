package com.soros.data.adaptor.service

import com.soros.data.adaptor.entity.StockWaveEntity
import com.soros.data.adaptor.repository.StockWaveRepository
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.stereotype.Service

@Service
class StockWavePersistenceService(
        val repository: StockWaveRepository
) {
    fun saveAll(entities: List<StockWaveEntity>) = try {
        entities.chunked(100).forEach {
            repository.saveAll(it)
        }
    } catch (e: Exception) {
        logger.error("saveAll error", e)
    }

    fun save(entity: StockWaveEntity) = try {
        repository.save(entity)
    } catch (e: Exception) {
        logger.error("#save error:", e)
    }

    fun findByStockNo(stockNo: String): List<StockWaveEntity>? {
        return repository.findByStockNo(stockNo)
    }

    fun findMaxEndDateByStockNo(stockNo: String): String? {
        return repository.findByStockNo(stockNo)?.maxByOrNull { it.endDate!! }?.endDate
    }

    fun queryAll(): List<StockWaveEntity>? = try {
        repository.findAll().toList()
    } catch (e: Exception) {
        logger.error("#queryAll error", e)
        null
    }

    companion object {
        val logger: Logger = LoggerFactory.getLogger(StockWavePersistenceService::class.java)
    }
}