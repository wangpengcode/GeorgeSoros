package com.soros.data.adaptor.market

import com.alibaba.fastjson2.JSON
import com.fasterxml.jackson.databind.util.JSONPObject
import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.soros.data.adaptor.dto.request.StockDailyDataDto
import com.soros.data.adaptor.dto.request.sz.SZMarketRequestDto
import com.soros.data.adaptor.dto.response.sz.Market
import com.soros.data.adaptor.dto.response.sz.SZMarketResponseDto
import com.soros.data.adaptor.extension.fromJson
import com.soros.data.adaptor.extension.fromListJson
import com.soros.data.adaptor.extension.toJson
import com.soros.data.adaptor.extension.toListStockDailyDataDto
import okhttp3.OkHttpClient
import okhttp3.Request
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.stereotype.Service
import java.net.InetSocketAddress
import java.net.Proxy
import java.util.concurrent.TimeUnit

@Service
class ShenZhenMarket() : AbstractMarketSourceApi<SZMarketRequestDto, List<StockDailyDataDto>?>() {

    private val okHttpClient = OkHttpClient.Builder().followRedirects(false)
//            .proxy(Proxy(Proxy.Type.HTTP, InetSocketAddress()))
            .readTimeout(10,TimeUnit.SECONDS)
            .build()

    override fun retrieveDataFromMarket(req: SZMarketRequestDto): String? {
        var url = req.url + "&txtDMorJC=" + req.txtDMorJC + "&txtBeginDate=" + req.txtBeginDate + "&txtEndDate=" + req.txtEndDate
//        logger.info("url $url")
        var request = Request.Builder().removeHeader("User-Agent").addHeader("User-Agent","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36")
                .url(url)
                .build()
        var call = okHttpClient.newCall(request)
        var response = call.execute()
        return response.body?.string()
    }

    override fun mappingData(rawData: String?): List<StockDailyDataDto>? {
        val list: List<Market>? = JSON.parseArray(rawData, Market::class.java)
//        logger.info("list ${list?.toJson()}")
        return list?.toListStockDailyDataDto()
    }

    companion object {
        val logger: Logger = LoggerFactory.getLogger(ShenZhenMarket::class.java)
    }
}