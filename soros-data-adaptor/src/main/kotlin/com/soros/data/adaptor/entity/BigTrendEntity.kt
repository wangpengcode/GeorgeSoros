package com.soros.data.adaptor.entity

import lombok.AllArgsConstructor
import lombok.NoArgsConstructor
import java.math.BigDecimal
import java.math.BigInteger
import javax.persistence.*

@Entity(name = "BIG_TREND")
@AllArgsConstructor
@NoArgsConstructor
data class BigTrendEntity(
        @Id
        @GeneratedValue(strategy = GenerationType.SEQUENCE)
        var id: Long? = null,

        @Column(name = "st_code", length = 20)
        var code: String,

        @Column(name = "wave_direction", length = 20)
        var waveDirection: String,

        @Column(name = "data_type", length = 20)
        var dataType: String,

        @Column(name = "start_date")
        var startDate: String? = null,

        @Column(name = "end_date")
        var endDate: String? = null,

        @Column(name = "last_days")
        var lastDays: BigInteger? = null,

        @Column(name = "st_range")
        var range: BigDecimal? = BigDecimal.ZERO
)