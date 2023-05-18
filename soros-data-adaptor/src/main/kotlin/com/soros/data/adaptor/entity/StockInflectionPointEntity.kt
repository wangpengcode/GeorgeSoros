package com.soros.data.adaptor.entity

import org.springframework.data.jpa.domain.support.AuditingEntityListener
import java.math.BigDecimal
import javax.persistence.*

@Entity
@Table(name = "stock_inflection_point")
@EntityListeners(AuditingEntityListener::class)
data class StockInflectionPointEntity(
        @Id
        @Column(name = "code", length = 20)
        val code: String,

        @Column(name = "date", length = 20)
        val date: String,

        @Column(name = "close")
        var close: BigDecimal? = null,

        @Column(name = "high")
        var high: BigDecimal? = null,

        @Column(name = "low")
        var low: BigDecimal? = null,

        @Column(name = "type", length = 20)
        var type: String
)