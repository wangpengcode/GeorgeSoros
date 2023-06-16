package com.soros.data.adaptor.entity

import org.springframework.data.jpa.domain.support.AuditingEntityListener
import java.math.BigDecimal
import javax.persistence.*

@Entity
@Table(name = "STOCK_WAVE")
@EntityListeners(AuditingEntityListener::class)
data class StockWaveEntity(
        @Id
        @GeneratedValue(strategy = GenerationType.SEQUENCE)
        var id: Long? = null,

        @Column(name = "st_code", length = 20)
        val code: String,

        @Column(name = "st_type", length = 20)
        val type: String,

        @Column(name = "start_date")
        var startDate: String? = null,

        @Column(name = "end_date")
        var endDate: String? = null,

        @Column(name = "last_days")
        var lastDays: Long? = null,

        @Column(name = "direction")
        var direction: String? = null,

        @Column(name = "st_range")
        var range: BigDecimal? = null,

        @Column(name = "wave_type")
        var waveType: String? = null,

        @Column(name = "start_inflection_point")
        var startInflectionPoint: String? = null,

        @Column(name = "end__inflection_point")
        var endInflectionPoint: String? = null,
)