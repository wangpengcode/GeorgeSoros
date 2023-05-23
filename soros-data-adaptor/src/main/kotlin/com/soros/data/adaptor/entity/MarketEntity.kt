package com.soros.data.adaptor.entity

import lombok.AllArgsConstructor
import lombok.NoArgsConstructor
import java.math.BigDecimal
import java.math.BigInteger
import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.Id

@Entity(name = "market_history")
@AllArgsConstructor
@NoArgsConstructor
data class MarketEntity(
        @Id
        @Column(name = "date", length = 20)
        val date: String,

        @Column(name = "zt_nums")
        var zt_nums: BigInteger? = null,

        @Column(name = "average_zt_nums")
        var average_zt_nums: BigInteger? = null,

        @Column(name = "dt_nums")
        var dt_nums: BigInteger? = null,

        @Column(name = "average_dt_nums")
        var average_dt_nums: BigInteger? = null,

        @Column(name = "flat_nums")
        var flat_nums: BigInteger? = null,

        @Column(name = "profit_nums")
        var profit_nums: BigInteger? = null,

        @Column(name = "average_profit_nums")
        var average_profit_nums: BigInteger? = null,

        @Column(name = "loss_nums")
        var loss_nums: BigInteger? = null,

        @Column(name = "average_loss_nums")
        var average_loss_nums: BigInteger? = null,

        @Column(name = "average_by_date_market_range")
        var average_by_date_market_range: BigDecimal? = null,

        @Column(name = "market_total_amount")
        var market_total_amount: BigDecimal? = null,

        @Column(name = "average_market_total_amount")
        var average_market_total_amount: BigDecimal? = null,

        @Column(name = "open_loss_nums")
        var open_loss_nums: BigInteger? = null,

        @Column(name = "average_open_loss_nums")
        var average_open_loss_nums: BigInteger? = null,

        @Column(name = "open_profit_nums")
        var open_profit_nums: BigInteger? = null,

        @Column(name = "average_open_profit_nums")
        var average_open_profit_nums: BigInteger? = null,

        @Column(name = "open_flat_nums")
        var open_flat_nums: BigInteger? = null,

        @Column(name = "open_high_close_down_nums")
        var open_high_close_down_nums: BigInteger? = null,

        @Column(name = "average_open_high_close_down_nums")
        var average_open_high_close_down_nums: BigInteger? = null,

        @Column(name = "open_down_close_high_nums")
        var open_down_close_high_nums: BigInteger? = null,

        @Column(name = "average_open_down_close_high_nums")
        var average_open_down_close_high_nums: BigInteger? = null,

        @Column(name = "rush_up_from_low_nums")
        var rush_up_from_low_nums: BigInteger? = null,

        @Column(name = "rush_down_from_high_nums")
        var rush_down_from_high_nums: BigInteger? = null,

        @Column(name = "market_stocks")
        var market_stocks: BigInteger? = null,

        @Column(name = "sh_close")
        var sh_close: BigDecimal? = null,

        @Column(name = "sz_close")
        var sz_close: BigDecimal? = null,

        @Column(name = "average_sh_close")
        var average_sh_close: BigDecimal? = null,

        @Column(name = "average_sz_close")
        var average_sz_close: BigDecimal? = null,
)