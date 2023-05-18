package com.soros.data.adaptor.service

import com.soros.data.adaptor.entity.StockInflectionPointEntity
import com.soros.data.adaptor.repository.StockInflectionPointRepository
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.stereotype.Service

@Service
class StockInflectionPointPersistenceService(
        val inflectionPointRepository: StockInflectionPointRepository
) {
    fun saveAll(entities: List<StockInflectionPointEntity>) = try {
        inflectionPointRepository.saveAll(entities)
    } catch (e: Exception) {
        entities.forEach {
            try {
                inflectionPointRepository.save(it)
            } catch (e: Exception) {
                logger.error("#save ${it.code} error:", e)
            }
        }
    }

    fun save(entity: StockInflectionPointEntity) = try {
        inflectionPointRepository.save(entity)
    } catch (e: Exception) {
        logger.error("#save error:", e)
    }

    fun findByStockNo(stockNo: String): StockInflectionPointEntity? {
        return inflectionPointRepository.findByCode(stockNo)
    }

    fun queryAll(): List<StockInflectionPointEntity>? = try {
        inflectionPointRepository.findAll().toList()
    } catch (e: Exception) {
        logger.error("#queryAll error", e)
        null
    }

    companion object {
        val logger: Logger = LoggerFactory.getLogger(StockInflectionPointPersistenceService::class.java)
    }
}