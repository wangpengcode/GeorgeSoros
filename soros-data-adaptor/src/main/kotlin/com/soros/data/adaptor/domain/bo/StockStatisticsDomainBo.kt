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
        var currentStockZdRange: BigDecimal = BigDecimal.ZERO,
        var currentStockPrice: BigDecimal = BigDecimal.ZERO,
        var averagePrice: BigDecimal,
        var averageVolume: BigDecimal,
        var averageFlat: BigDecimal,
        var averageProfit: BigDecimal,
        var averageLoss: BigDecimal,
        var overAveragePriceIndex: BigDecimal,
        var overAverageVolumeIndex: BigDecimal,
        var marketTotalStock: Int = 0,
        var marketProfitStock: Int = 0,
        var marketLossStock: Int = 0,
        var marketProfitRate:  BigDecimal = BigDecimal.ZERO,
        var marketShangHaiZdRange: BigDecimal = BigDecimal.ZERO,
        var marketShangHaiAmount: BigDecimal = BigDecimal.ZERO,
        var marketShenZhenZdRange: BigDecimal = BigDecimal.ZERO,
        var marketShenZhenAmount: BigDecimal = BigDecimal.ZERO,
)

data class MarketMacroscopicDomainBo(
        var marketTotalStock: Int = 0,
        var marketProfitStock: Int = 0,
        var marketLossStock: Int = 0,
        var marketProfitRate: BigDecimal = BigDecimal.ZERO,
        var marketShangHaiZdRange: BigDecimal = BigDecimal.ZERO,
        var marketShangHaiAmount: BigDecimal = BigDecimal.ZERO,
        var marketShenZhenZdRange: BigDecimal = BigDecimal.ZERO,
        var marketShenZhenAmount: BigDecimal = BigDecimal.ZERO,
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

data class StockStatisticsDailyDomainBo(
        var date: String,
        var totalStock: Int = 0,
        var profitStock: Int = 0,
        var lossStock: Int = 0,
        var profitRate: BigDecimal = BigDecimal.ZERO
)