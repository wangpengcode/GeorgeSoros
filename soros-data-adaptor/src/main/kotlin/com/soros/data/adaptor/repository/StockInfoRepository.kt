package com.soros.data.adaptor.repository

import com.soros.data.adaptor.entity.StockInfoEntity
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository

interface StockInfoRepository : CrudRepository<StockInfoEntity, String> {
	@Query("FROM StockInfoEntity a where a.code= ?1")
	fun findByStockNo(code: String): StockInfoEntity
}