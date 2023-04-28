package com.soros.data.adaptor.service

import com.soros.data.adaptor.entity.StockInfoEntity
import com.soros.data.adaptor.repository.StockInfoRepository
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.stereotype.Service

@Service
class StockInfoPersistenceService(
    val stockInfoRepository: StockInfoRepository
) {
	fun saveAll(entities: List<StockInfoEntity>) = try {
		stockInfoRepository.saveAll(entities)
	} catch (e: Exception) {
		logger.error("saveAll error", e)
	}
	fun save(entity: StockInfoEntity) = try {
		stockInfoRepository.save(entity)
	} catch (e: Exception) {
		logger.error("#save error:", e)
	}
	
	fun findByStockNo(stockNo: String): StockInfoEntity {
		return stockInfoRepository.findByStockNo(stockNo)
	}
	
	fun queryAll(): List<StockInfoEntity>? = try {
		stockInfoRepository.findAll().toList()
	} catch (e: Exception) {
		logger.error("#queryAll error", e)
		null
	}
    
    companion object {
        val logger: Logger = LoggerFactory.getLogger(StockInfoPersistenceService::class.java)
    }
}