package com.soros.data.adaptor.domain.bo

import com.soros.data.adaptor.enums.TrendInflectionPointType
import com.soros.data.adaptor.enums.WaveTypeEnum
import java.math.BigDecimal

data class StockWaveBo(
        val code: String,
        var close: BigDecimal,
        var date: String
)

data class StockWaveSingleBo(
    var waveTypeEnum: WaveTypeEnum,
    var inflectionPointType: TrendInflectionPointType? = null,
    var inflectionPoint: StockWaveBo? = null,
    var maxPoint: StockWaveBo,
    var minPoint: StockWaveBo
)