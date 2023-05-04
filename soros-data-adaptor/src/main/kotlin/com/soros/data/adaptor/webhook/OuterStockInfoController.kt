package com.soros.data.adaptor.webhook

import com.soros.data.adaptor.dto.response.ResponseCommonBody
import com.soros.data.adaptor.dto.request.StockInfo
import com.soros.data.adaptor.entity.StockInfoEntity
import com.soros.data.adaptor.extension.toStockInfoEntity
import com.soros.data.adaptor.service.StockInfoPersistenceService
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestMethod
import org.springframework.web.bind.annotation.ResponseBody
import kotlin.streams.toList

@Controller
@RequestMapping("/info")
class OuterStockInfoController(
        val service: StockInfoPersistenceService
) {
    @RequestMapping("/stock", method = [RequestMethod.POST])
    @ResponseBody
    fun dailyData(@RequestBody info: StockInfo): ResponseCommonBody {
        println(info)
        try {
            service.save(info.toStockInfoEntity())
        } catch (e: Exception) {

        }
        return ResponseCommonBody(
                msg = "ok"
        )
    }

    @RequestMapping("/all", method = [RequestMethod.GET])
    fun allList(): List<String>? {
        return try {
            service.queryAll()?.stream()?.map { it.code }?.toList()
        } catch (e: Exception) {
            null
        }
    }
}