package com.soros.data.adaptor.service

import com.soros.data.adaptor.entity.BigTrendEntity
import com.soros.data.adaptor.repository.BigTrendRepository
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.dao.DataIntegrityViolationException
import org.springframework.stereotype.Service

@Service
class BigTrendPersistenceService(
        val repository: BigTrendRepository,
) {
    fun saveAll(entities: List<BigTrendEntity>) = try {
        entities.chunked(100).forEach {
            try {
                repository.saveAll(it)
            } catch (e: Exception) {
                it.forEach { it2 ->
                    try {
                        repository.save(it2)
                    } catch (e: Exception) {
                        if (e !is DataIntegrityViolationException) {
                            logger.warn("already save {}", it2.code)
                        } else {
                            logger.error("save {} error", it2.code, e)
                        }
                    }
                }
            }
        }
    } catch (e: Exception) {
        logger.error("saveAll error", e)
    }

    fun save(entity: BigTrendEntity) = try {
        repository.save(entity)
    } catch (e: Exception) {
        logger.error("#save error:", e)
    }

    fun findByStockNo(stockNo: String): List<BigTrendEntity>? {
        return repository.findByStockNo(stockNo)
    }


    fun queryAll(): List<BigTrendEntity>? = try {
        repository.findAll().toList()
    } catch (e: Exception) {
        logger.error("#queryAll error", e)
        null
    }

    companion object {
        val logger: Logger = LoggerFactory.getLogger(BigTrendPersistenceService::class.java)
    }
}