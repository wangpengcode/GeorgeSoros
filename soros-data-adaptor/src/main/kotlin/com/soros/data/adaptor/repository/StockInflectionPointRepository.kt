package com.soros.data.adaptor.repository

import com.soros.data.adaptor.entity.StockInflectionPointEntity
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository

interface StockInflectionPointRepository : CrudRepository<StockInflectionPointEntity, String> {
	@Query("FROM StockInflectionPointEntity a where a.code= ?1")
	fun findByCode(code: String): StockInflectionPointEntity?
}