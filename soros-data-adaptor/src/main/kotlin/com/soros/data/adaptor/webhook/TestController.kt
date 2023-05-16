package com.soros.data.adaptor.webhook

import com.soros.data.adaptor.domain.bo.InflectionPoint
import com.soros.data.adaptor.service.StockHistoryPersistenceService
import com.soros.data.adaptor.service.StockInfoPersistenceService
import com.soros.data.adaptor.transformer.toStockWaveBo
import com.soros.data.adaptor.utils.findInflectionPoint
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestMethod
import org.springframework.web.bind.annotation.ResponseBody

@Controller
@RequestMapping("/test")
class TestController(val history: StockHistoryPersistenceService, val info: StockInfoPersistenceService) {

    @RequestMapping("/inflection", method = [RequestMethod.GET])
    @ResponseBody
    fun testWave(): List<InflectionPoint>? {
        val histories = history.findByStockNo("000001")
        return histories?.map { it.toStockWaveBo() }?.findInflectionPoint(4)
    }
}