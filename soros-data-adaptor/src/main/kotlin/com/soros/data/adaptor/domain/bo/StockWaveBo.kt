package com.soros.data.adaptor.domain.bo

import com.soros.data.adaptor.enums.InflectionPointType
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
        var close: BigDecimal? = null,
        var high: BigDecimal? =null,
        var low: BigDecimal? = null,
        var type: InflectionPointType
)

data class StockTrendWaveBo(
        var waveDirectionEnum: WaveDirectionEnum,
        var lastDays: Int = 0,
        var range: BigDecimal,
        var trendMultiType: TrendMultiType,
        var code: String,
        var startInflectionPoint: InflectionPoint? = null,
        var endInflectionPoint: InflectionPoint? = null
)

data class StockWaveSingleBo(
        var waveDirectionEnum: WaveDirectionEnum,
        var inflectionPointType: InflectionPointType? = null,
        var inflectionPoint: StockWaveBo? = null,
        var maxPoint: StockWaveBo,
        var minPoint: StockWaveBo
)