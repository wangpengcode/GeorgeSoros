package com.soros.data.adaptor.entity

import org.springframework.data.jpa.domain.support.AuditingEntityListener
import java.math.BigDecimal
import javax.persistence.*

@Entity
@Table(name = "STOCK_INFO")
@EntityListeners(AuditingEntityListener::class)
data class StockInfoEntity(
	@Id
	@Column(name = "code", length = 20)
	val code: String,
	
	/** **/
	@Column(name = "name", length = 64)
	val name: String,
	
	/** **/
	@Column(name = "full_name", length = 200)
	val fullName: String? = null,
	
	/** **/
	@Column(name = "ipo_date", length = 20)
	var ipoDate: String? = null,
	
	/** **/
	@Column(name = "total_capital")
	var totalCapital: BigDecimal? = null,
	
	/** 证券名称 **/
	@Column(name = "flow_capital")
	var flowCapital: BigDecimal? = null,
	
	/** 上市日期 **/
	@Column(name = "industry", length = 20)
	var industry: String? = null,

	/** 上市日期 **/
	@Column(name = "market", length = 20)
	var market: String? = null
){
//	fun haveDataRate(): BigDecimal {
//		return downloadTimes?.let {
//			BigDecimal(haveDataTimes ?: "0").divide(it.toBigDecimal())
//		} ?: BigDecimal.ZERO
//	}
}
