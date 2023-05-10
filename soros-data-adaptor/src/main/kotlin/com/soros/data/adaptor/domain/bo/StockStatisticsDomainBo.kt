package com.soros.data.adaptor.domain.bo

import java.math.BigDecimal

data class StockStatisticsDomainBo(
        val code: String,
        val type: String,
        var macroscopicDomainBo: List<StockStatisticsMacroscopicDomainBo>? = null,
        var monthDomainBo: List<StockStatisticsMonthDomainBo>? = null
)

data class StockStatisticsMacroscopicDomainBo(
        var date: String,
        var averagePrice: BigDecimal,
        var averageVolume: BigDecimal,
        var averageFlat: BigDecimal,
        var averageProfit: BigDecimal,
        var averageLoss: BigDecimal,
        var overAveragePriceIndex: BigDecimal,
        var overAverageVolumeIndex: BigDecimal,
)

data class StockStatisticsMonthDomainBo(
        var month: String,
        var averagePrice: BigDecimal,
        var averageVolume: BigDecimal,
        var averageFlat: BigDecimal,
        var averageProfit: BigDecimal,
        var averageLoss: BigDecimal,
        var overAveragePriceIndex: BigDecimal,
        var overAverageVolumeIndex: BigDecimal,
)