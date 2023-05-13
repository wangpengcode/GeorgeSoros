package com.soros.data.adaptor.domain.bo

import com.soros.data.adaptor.entity.StockHistoryEntity
import com.soros.data.adaptor.enums.TrendInflectionPointType
import com.soros.data.adaptor.enums.WaveTypeEnum
import java.math.BigDecimal

data class StockWaveBo(
        val code: String,
        var range: BigDecimal
)

data class StockWaveSingleBo(
    val waveTypeEnum: WaveTypeEnum,
    val inflectionPointType: TrendInflectionPointType,
    val inflectionPoint: StockHistoryEntity,
    val maxPoint: StockHistoryEntity,
    val minPoint: StockHistoryEntity
)