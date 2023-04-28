package com.soros.data.adaptor.webhook

import com.soros.data.adaptor.dto.response.ResponseCommonBody
import com.soros.data.adaptor.dto.request.StockInfo
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestMethod
import org.springframework.web.bind.annotation.ResponseBody

@Controller
@RequestMapping("/info")
class OuterStockInfoController {

    @RequestMapping("/stock", method = [RequestMethod.POST])
    @ResponseBody
    fun dailyData(@RequestBody info: StockInfo): ResponseCommonBody {
        println(info)
        return ResponseCommonBody(
                msg = "ok"
        )
    }
}