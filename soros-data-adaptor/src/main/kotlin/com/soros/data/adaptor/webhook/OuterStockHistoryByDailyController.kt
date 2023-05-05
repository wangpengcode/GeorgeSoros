package com.soros.data.adaptor.webhook

import com.soros.data.adaptor.dto.request.StockDailyDataDto
import com.soros.data.adaptor.dto.response.ResponseCommonBody
import com.soros.data.adaptor.entity.StockHistoryEntity
import com.soros.data.adaptor.extension.toStockHistoryEntity
import com.soros.data.adaptor.service.StockHistoryPersistenceService
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestMethod
import org.springframework.web.bind.annotation.ResponseBody
import java.math.BigDecimal

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
}