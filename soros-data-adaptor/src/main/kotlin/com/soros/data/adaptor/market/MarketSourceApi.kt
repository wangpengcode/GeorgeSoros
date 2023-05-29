package com.soros.data.adaptor.market

interface MarketSourceApi<IN,OUT> {
    fun retrieveDataFromMarket(req: IN): String?
    fun mappingData(rawData: String?): OUT?
}