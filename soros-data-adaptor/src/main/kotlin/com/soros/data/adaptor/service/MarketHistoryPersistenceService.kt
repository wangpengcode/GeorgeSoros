package com.soros.data.adaptor.service

import com.soros.data.adaptor.entity.MarketEntity
import com.soros.data.adaptor.repository.MarketHistoryRepository
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.stereotype.Service

@Service
class MarketHistoryPersistenceService(
    val marketHistoryRepository: MarketHistoryRepository
) {
	fun saveAll(entities: List<MarketEntity>) = try {
		marketHistoryRepository.saveAll(entities)
	} catch (e: Exception) {
		throw e
	}

	fun findAll(): List<MarketEntity>? = try {
		marketHistoryRepository.findAll().toList()
	} catch (e: Exception) {
		throw e
	}
	fun save(entity: MarketEntity) = try {
		marketHistoryRepository.save(entity)
	} catch (e: Exception) {
		logger.error("MarketHistoryPersistenceService save with error:", e)
	}

	fun findByCodeAndDate(date: String): MarketEntity? {
		return marketHistoryRepository.findById(date).orElse(null)
	}

    companion object {
        val logger: Logger = LoggerFactory.getLogger(MarketHistoryPersistenceService::class.java)
    }
}