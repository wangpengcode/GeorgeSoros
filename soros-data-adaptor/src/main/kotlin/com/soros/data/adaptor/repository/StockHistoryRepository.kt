package com.soros.data.adaptor.repository

import com.soros.data.adaptor.entity.StockHistoryEntity
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository

interface StockHistoryRepository : CrudRepository<StockHistoryEntity, Long> {
	@Query("select * from stock_history c where c.st_code = :code", nativeQuery = true)
	fun findByStockNo(code: String): List<StockHistoryEntity>?
}