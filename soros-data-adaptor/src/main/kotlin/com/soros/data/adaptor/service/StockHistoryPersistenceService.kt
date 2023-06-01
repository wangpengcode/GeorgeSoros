package com.soros.data.adaptor.service

import com.soros.data.adaptor.entity.StockHistoryEntity
import com.soros.data.adaptor.repository.StockHistoryRepository
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.stereotype.Service

@Service
class StockHistoryPersistenceService(
    val stockHistoryRepository: StockHistoryRepository
) {
	fun saveAll(entities: List<StockHistoryEntity>) = try {
		stockHistoryRepository.saveAll(entities)
	} catch (e: Exception) {
		throw e
	}
	fun save(entity: StockHistoryEntity) = try {
		stockHistoryRepository.save(entity)
	} catch (e: Exception) {
		throw e
	}
	
	fun findByStockNo(stockNo: String): List<StockHistoryEntity>? {
		return stockHistoryRepository.findByStockNo(stockNo)
	}

	fun findByCodeAndDate(code: String, date: String): StockHistoryEntity? {
		val partitionCode = code.replace("sz", "").replace("sh", "").toLong()
		return stockHistoryRepository.findByCodeAndDate(code,date, partitionCode)
	}

	fun findMaxDateByStockNo(stockNo: String): String? {
		return stockHistoryRepository.findByStockNo(stockNo)?.stream()
				?.max(Comparator.comparing(StockHistoryEntity::date))
				?.map { it.date }?.orElse(null)
	}

	fun deleteAfterDateByStockNo(code: String, date: String) {
		stockHistoryRepository.deleteByStockNo(code,date)
	}

    companion object {
        val logger: Logger = LoggerFactory.getLogger(StockHistoryPersistenceService::class.java)
    }
}