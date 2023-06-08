package com.soros.data.adaptor.repository

import com.soros.data.adaptor.entity.BigTrendEntity
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository

interface BigTrendRepository : CrudRepository<BigTrendEntity, String> {
	@Query("FROM BigTrendEntity a where a.code= ?1")
	fun findByStockNo(code: String): List<BigTrendEntity>?

}