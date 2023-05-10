package com.soros.data.adaptor.transformer

import com.soros.data.adaptor.domain.bo.StockStatisticsDomainBo
import com.soros.data.adaptor.dto.request.StockDailyDataDto
import com.soros.data.adaptor.dto.request.StockIndex
import com.soros.data.adaptor.dto.request.StockInfo
import com.soros.data.adaptor.entity.StockHistoryEntity
import com.soros.data.adaptor.entity.StockIndexEntity
import com.soros.data.adaptor.entity.StockInfoEntity
import com.soros.data.adaptor.entity.StockStatisticsEntity
import com.soros.data.adaptor.extension.fromJson
import com.soros.data.adaptor.extension.toJson

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

fun StockStatisticsDomainBo.toStockStatisticsEntity() : StockStatisticsEntity {
    return StockStatisticsEntity(
            code = this.code,
            type = this.type,
            macroscopicIndex = this.macroscopicDomainBo?.toJson(),
            macroscopicMonthIndex = this.monthDomainBo?.toJson()
    )
}

fun StockStatisticsEntity.toStockStatisticsDomainBo() : StockStatisticsDomainBo {
    return StockStatisticsDomainBo(
            code = this.code,
            type = this.type,
            macroscopicDomainBo = this.macroscopicIndex?.fromJson(),
            monthDomainBo = this.macroscopicMonthIndex?.fromJson()
    )
}