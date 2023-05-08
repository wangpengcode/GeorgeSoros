package com.soros.data.adaptor.extension

import com.soros.data.adaptor.dto.request.StockDailyDataDto
import com.soros.data.adaptor.dto.request.StockIndex
import com.soros.data.adaptor.dto.request.StockInfo
import com.soros.data.adaptor.entity.StockHistoryEntity
import com.soros.data.adaptor.entity.StockIndexEntity
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

fun StockDailyDataDto.toStockHistoryEntity(): StockHistoryEntity {
    return StockHistoryEntity(
            code = this.code.orEmpty(),
            date = this.date.orEmpty(),
            open = this.open,
            close = this.close,
            high = this.high,
            low = this.low,
            volume = this.volume,
            totalAmount = this.totalAmount,
            range = this.range,
            zdRange = this.zdRange,
            zdAmount = this.zdAmount,
            change = this.change,
            partitionCode = this.code?.replace("sh","")?.replace("sz","")?.toLong()
    )
}

fun StockIndex.toStockIndexEntity() : StockIndexEntity {
    return StockIndexEntity(
            code = this.code,
            name = this.name.orEmpty()
    )
}