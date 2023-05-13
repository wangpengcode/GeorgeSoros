package com.soros.data.adaptor.domain.bo

import java.math.BigDecimal

data class StockWaveBo(
        val code: String,
        var range: BigDecimal
)