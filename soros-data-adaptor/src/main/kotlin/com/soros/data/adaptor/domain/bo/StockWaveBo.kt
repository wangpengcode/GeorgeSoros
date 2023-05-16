package com.soros.data.adaptor.domain.bo

import com.soros.data.adaptor.enums.TrendInflectionPointType
import com.soros.data.adaptor.enums.TrendMultiType
import com.soros.data.adaptor.enums.WaveDirectionEnum
import java.math.BigDecimal

data class StockWaveBo(
        val code: String,
        var close: BigDecimal,
        var high: BigDecimal,
        var low: BigDecimal,
        var date: String
)

data class InflectionPoint(
        val code: String,
        var date: String,
        var close: BigDecimal,
        var high: BigDecimal? =null,
        var low: BigDecimal? = null,
        var type: TrendInflectionPointType
)

data class StockTrendWaveBo(
        var waveDirectionEnum: WaveDirectionEnum,
        var startWaveBo: StockWaveBo,
        var endWaveBo: StockWaveBo,
        var lastDays: Int,
        var range: BigDecimal,
        var trendMultiType: TrendMultiType,
        var code: String,
        var startInflectionPoint: InflectionPoint,
        var endInflectionPoint: InflectionPoint
)

data class StockWaveSingleBo(
        var waveDirectionEnum: WaveDirectionEnum,
        var inflectionPointType: TrendInflectionPointType? = null,
        var inflectionPoint: StockWaveBo? = null,
        var maxPoint: StockWaveBo,
        var minPoint: StockWaveBo
)