package com.soros.data.adaptor.entity

import org.springframework.data.jpa.domain.support.AuditingEntityListener
import javax.persistence.*

@Entity
@Table(name = "STOCK_STATISTICS")
@EntityListeners(AuditingEntityListener::class)
data class StockStatisticsEntity(
        @Id
        @Column(name = "code", length = 20)
        val code: String,

        @Column(name = "type", length = 20)
        val type: String,

        @Column(name = "macroscopic_index")
        val macroscopicIndex: String? = null,

        @Column(name = "macroscopic_month_index")
        val macroscopicMonthIndex: String? = null,
)