package com.soros.data.adaptor.repository

import com.soros.data.adaptor.entity.StockHistoryEntity
import org.springframework.data.jpa.repository.Modifying
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository
import javax.transaction.Transactional

@Transactional
interface StockHistoryRepository : CrudRepository<StockHistoryEntity, Long> {
	@Query("select * from stock_history c where c.st_code = :code", nativeQuery = true)
	fun findByStockNo(code: String): List<StockHistoryEntity>?

	@Modifying
	@Query("delete from stock_history b where b.st_code=:code and b.st_date > :date", nativeQuery = true)
	fun deleteByStockNo(code: String, date: String)

	@Query("select * from stock_history c where c.partition_code =:partitionCode and c.st_code = :code and c.st_date =:date", nativeQuery = true)
	fun findByCodeAndDate(code: String, date: String, partitionCode: Long): StockHistoryEntity?
}