package com.soros.data.adaptor.webhook

import com.soros.data.adaptor.domain.bo.InflectionPoint
import com.soros.data.adaptor.domain.bo.StockTrendWaveBo
import com.soros.data.adaptor.service.StockHistoryPersistenceService
import com.soros.data.adaptor.service.StockInfoPersistenceService
import com.soros.data.adaptor.transformer.toStockWaveBo
import com.soros.data.adaptor.utils.*
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestMethod
import org.springframework.web.bind.annotation.ResponseBody

@Controller
@RequestMapping("/test")
class TestController(val history: StockHistoryPersistenceService, val info: StockInfoPersistenceService) {

    @RequestMapping("/inflection/{stockNo}", method = [RequestMethod.GET])
    @ResponseBody
    fun testWave(@PathVariable stockNo: String): List<InflectionPoint>? {
        val histories = history.findByStockNo(stockNo)
        return histories?.map { it.toStockWaveBo() }?.findInflectionPoint(6)?.merge()?.findPeekAndValley()
    }

    @RequestMapping("/trend/{stockNo}", method = [RequestMethod.GET])
    @ResponseBody
    fun trend(@PathVariable stockNo: String): List<StockTrendWaveBo>? {
        val histories = history.findByStockNo(stockNo)
        return histories?.map { it.toStockWaveBo() }?.findInflectionPoint(6)?.merge()?.findPeekAndValley()?.littleTrend()
    }
}