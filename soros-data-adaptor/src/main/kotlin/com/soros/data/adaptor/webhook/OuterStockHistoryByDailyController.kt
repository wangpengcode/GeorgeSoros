package com.soros.data.adaptor.webhook

import com.soros.data.adaptor.dto.request.StockDailyDataDto
import com.soros.data.adaptor.dto.response.ResponseCommonBody
import com.soros.data.adaptor.dto.response.ResponseStockInfo
import com.soros.data.adaptor.extension.toStockHistoryEntity
import com.soros.data.adaptor.service.StockHistoryPersistenceService
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.*
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter
import java.util.Calendar

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

    @RequestMapping("/max/date/{stockNo}", method = [RequestMethod.GET])
    @ResponseBody
    fun findMaxDateByNo(@PathVariable stockNo: String): ResponseStockInfo {
        var maxDate: String? = null
        val now = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd"))
        try {
            maxDate = service.findMaxDateByStockNo(stockNo)
        } catch (e: Exception) {

        }
        return ResponseStockInfo(
                maxDate = if (maxDate == null || maxDate == "") "20200101" else maxDate.replace("-",""),
                today = now.toString()
        )
    }
}