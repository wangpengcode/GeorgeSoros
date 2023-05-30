package com.soros.data.adaptor.dto.request

import java.math.BigDecimal

data class StockInfo(
        var code: String? = null,
        var name: String? = null,
        var fullName: String? = null,
        var ipoDate: String? = null,
        var totalCapital: BigDecimal? = null,
        var flowCapital: BigDecimal? = null,
        var industry: String? = null,
        var market: String? = null
)