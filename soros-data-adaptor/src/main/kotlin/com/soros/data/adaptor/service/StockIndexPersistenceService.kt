package com.soros.data.adaptor.service

import com.soros.data.adaptor.entity.StockIndexEntity
import com.soros.data.adaptor.repository.StockIndexRepository
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.stereotype.Service

@Service
class StockIndexPersistenceService(
        val repository: StockIndexRepository
) {
    fun saveAll(entities: List<StockIndexEntity>) = try {
        repository.saveAll(entities)
    } catch (e: Exception) {
        logger.error("saveAll error", e)
    }

    fun save(entity: StockIndexEntity) = try {
        repository.save(entity)
    } catch (e: Exception) {
        logger.error("#save error:", e)
    }

    fun findByStockNo(stockNo: String): StockIndexEntity {
        return repository.findByIndexCode(stockNo)
    }

    fun queryAll(): List<StockIndexEntity>? = try {
        repository.findAll().toList()
    } catch (e: Exception) {
        logger.error("#queryAll error", e)
        null
    }

    companion object {
        val logger: Logger = LoggerFactory.getLogger(StockIndexPersistenceService::class.java)
    }
}