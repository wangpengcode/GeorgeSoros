package com.soros.data.adaptor.entity

import org.springframework.data.jpa.domain.support.AuditingEntityListener
import java.math.BigDecimal
import javax.persistence.*

@Entity
@Table(name = "BIG_TREND")
@EntityListeners(AuditingEntityListener::class)
data class BigTrendEntity(
        @Id
        @GeneratedValue(strategy = GenerationType.SEQUENCE)
        var id: Long? = null,

        @Column(name = "code", length = 20)
        val code: String,

        @Column(name = "wave_direction", length = 20)
        val waveDirection: String,

        @Column(name = "data_type", length = 20)
        val dataType: String,

        @Column(name = "start_date")
        var startDate: String? = null,

        @Column(name = "end_date")
        var endDate: String? = null,

        @Column(name = "last_days")
        var lastDays: Long = 0,

        @Column(name = "range")
        var range: BigDecimal? = BigDecimal.ZERO
)