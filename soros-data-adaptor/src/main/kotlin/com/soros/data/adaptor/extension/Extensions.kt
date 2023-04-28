package com.soros.data.adaptor.extension

import com.soros.data.adaptor.dto.request.StockInfo
import com.soros.data.adaptor.entity.StockInfoEntity

fun StockInfo.toStockInfoEntity(): StockInfoEntity {
    return StockInfoEntity(
            code = this.code.orEmpty(),
            name = this.name.orEmpty(),
            fullName = this.fullName.orEmpty(),
            ipoDate = this.ipoDate.orEmpty(),
            totalCapital = this.totalCapital,
            flowCapital = this.flowCapital,
            industry = this.industry.orEmpty()
    )
}