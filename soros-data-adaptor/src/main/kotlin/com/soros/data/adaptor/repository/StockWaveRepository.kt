package com.soros.data.adaptor.repository

import com.soros.data.adaptor.entity.StockWaveEntity
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository

interface StockWaveRepository : CrudRepository<StockWaveEntity, Long> {
	@Query("FROM StockWaveEntity a where a.code= ?1")
	fun findByStockNo(code: String): List<StockWaveEntity>?

}