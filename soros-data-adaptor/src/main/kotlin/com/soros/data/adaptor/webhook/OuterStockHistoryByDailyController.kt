package com.soros.data.adaptor.webhook

import com.soros.data.adaptor.dto.request.StockDailyDataDto
import com.soros.data.adaptor.dto.response.ResponseCommonBody
import com.soros.data.adaptor.dto.response.ResponseStockInfo
import com.soros.data.adaptor.extension.toStockHistoryEntity
import com.soros.data.adaptor.service.StockHistoryPersistenceService
import org.apache.shardingsphere.sharding.algorithm.sharding.mod.HashModShardingAlgorithm
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestMethod
import org.springframework.web.bind.annotation.ResponseBody
import kotlin.math.abs

@Controller
@RequestMapping("/history")
class OuterStockHistoryByDailyController(
        val service: StockHistoryPersistenceService
) {

    @RequestMapping("/daily", method = [RequestMethod.POST])
    @ResponseBody
    fun dailyData(@RequestBody stock: StockDailyDataDto): ResponseCommonBody {
        println(stock)
        try {
            service.save(stock.toStockHistoryEntity())
        } catch (e: Exception) {

        }
        return ResponseCommonBody(
                msg = "ok"
        )
    }

    @RequestMapping("/stock/{stockNo}", method = [RequestMethod.GET])
    @ResponseBody
    fun findByNo(@PathVariable stockNo: String): ResponseStockInfo {
        println(stockNo)
        println(stockNo.toLong() % 100)
        var maxDate: String? = null
        try {
            maxDate = service.findMaxDateByStockNo(stockNo)
        } catch (e: Exception) {

        }
        return ResponseStockInfo(
                maxDate = maxDate
        )
    }
}