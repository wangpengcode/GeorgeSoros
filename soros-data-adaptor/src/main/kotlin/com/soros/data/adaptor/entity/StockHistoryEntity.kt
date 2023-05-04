package com.soros.data.adaptor.entity

import java.math.BigDecimal
import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.Id

@Entity(name="stock_history")
data class StockHistoryEntity(
        @Id
        @Column(name = "code", length = 20)
        val code: String,
        /** **/
        @Column(name = "date", length = 20)
        val date: String,
        /** **/
        @Column(name = "open")
        var open: BigDecimal? = null,

        @Column(name = "close")
        var close: BigDecimal? = null,

        @Column(name = "high")
        var high: BigDecimal? = null,

        @Column(name = "low")
        var low: BigDecimal? = null,

        @Column(name = "volume")
        var volume: BigDecimal? = null,

        @Column(name = "total_amount")
        var totalAmount: BigDecimal? = null,

        @Column(name = "range")
        var range: BigDecimal? = null,

        @Column(name = "zd_range")
        var zdRange: BigDecimal? = null,

        @Column(name = "zd_amount")
        var zdAmount: BigDecimal? = null,

        @Column(name = "change")
        var change: BigDecimal? = null
) {
//    var id: Int = code.toInt()
}
