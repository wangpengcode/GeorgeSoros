package com.soros.data.adaptor.market

abstract class AbstractMarketSourceApi<IN, OUT>: MarketSourceApi<IN, OUT> {

    fun process(requestDto: IN) : OUT? {
       return try {
           val result = this.retrieveDataFromMarket(requestDto)
           return this.mappingData(result)
       } catch (e: Exception) {
           throw e
       }
    }
}