package com.soros.data.adaptor.webhook

import com.soros.data.adaptor.dto.response.ResponseCommonBody
import com.soros.data.adaptor.dto.request.StockDailyDataDto
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestMethod
import org.springframework.web.bind.annotation.ResponseBody

@Controller
@RequestMapping("/history")
class OuterStockHistoryByDailyController {

    @RequestMapping("/daily", method = [RequestMethod.POST])
    @ResponseBody
    fun dailyData( @RequestBody stock: StockDailyDataDto): ResponseCommonBody {
        println(stock)
        return ResponseCommonBody(
                msg = "ok"
        )
    }
}