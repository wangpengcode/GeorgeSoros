package com.soros.data.adaptor.dto.request

import java.math.BigDecimal

data class StockDailyDataDto(
        var date: String? = null,
        var open: BigDecimal? = null,
        var close: BigDecimal?= null,
        var high: BigDecimal?= null,
        var low: BigDecimal?= null,
        var volume: BigDecimal?= null,
        var totalAmount: BigDecimal?= null,
        var range: BigDecimal?= null,
        var zdRange: BigDecimal?= null,
        var zdAmount: BigDecimal?= null,
        var change: BigDecimal?= null
)