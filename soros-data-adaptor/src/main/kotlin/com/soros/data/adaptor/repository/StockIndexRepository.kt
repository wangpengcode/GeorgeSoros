package com.soros.data.adaptor.repository

import com.soros.data.adaptor.entity.StockIndexEntity
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository

interface StockIndexRepository : CrudRepository<StockIndexEntity, String> {
	@Query("FROM StockIndexEntity a where a.code= ?1")
	fun findByIndexCode(code: String): StockIndexEntity
}