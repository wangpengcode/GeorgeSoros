package com.soros.data.adaptor.repository

import com.soros.data.adaptor.entity.StockStatisticsEntity
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository

interface StockStatisticsRepository : CrudRepository<StockStatisticsEntity, String> {
	@Query("FROM StockStatisticsEntity a where a.code= ?1")
	fun findByStockNo(code: String): StockStatisticsEntity?
}