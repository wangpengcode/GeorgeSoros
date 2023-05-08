package com.soros.data.adaptor.entity

import lombok.AllArgsConstructor
import lombok.NoArgsConstructor
import java.math.BigDecimal
import javax.persistence.*

@Entity(name = "stock_history")
@AllArgsConstructor
@NoArgsConstructor
data class StockHistoryEntity(

        @Id
        @GeneratedValue(strategy = GenerationType.SEQUENCE)
        var id: Long? = null,

        @Column(name = "st_code", length = 20)
        val code: String,

        @Column(name = "partition_code", length = 20)
        var partitionCode: Long?,
        /** **/
        @Column(name = "st_date", length = 20)
        val date: String,
        /** **/
        @Column(name = "st_open")
        var open: BigDecimal? = null,

        @Column(name = "st_close")
        var close: BigDecimal? = null,

        @Column(name = "st_high")
        var high: BigDecimal? = null,

        @Column(name = "st_low")
        var low: BigDecimal? = null,

        @Column(name = "st_volume")
        var volume: BigDecimal? = null,

        @Column(name = "total_amount")
        var totalAmount: BigDecimal? = null,

        @Column(name = "st_range")
        var range: BigDecimal? = null,

        @Column(name = "zd_range")
        var zdRange: BigDecimal? = null,

        @Column(name = "zd_amount")
        var zdAmount: BigDecimal? = null,

        @Column(name = "st_change")
        var change: BigDecimal? = null
) {
    init {
        this.partitionCode = this.code.replace("sz", "").replace("sh", "").toLong()
    }
}
