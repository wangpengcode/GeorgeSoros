package com.soros.data.adaptor.webhook

import com.soros.data.adaptor.dto.request.StockIndex
import com.soros.data.adaptor.dto.request.StockInfo
import com.soros.data.adaptor.dto.response.ResponseCommonBody
import com.soros.data.adaptor.extension.toStockIndexEntity
import com.soros.data.adaptor.extension.toStockInfoEntity
import com.soros.data.adaptor.service.StockIndexPersistenceService
import com.soros.data.adaptor.service.StockInfoPersistenceService
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestMethod
import org.springframework.web.bind.annotation.ResponseBody
import kotlin.streams.toList
import org.slf4j.Logger
import org.slf4j.LoggerFactory

@Controller
@RequestMapping("/index")
class OuterStockIndexController(
        val service: StockIndexPersistenceService
) {
    @RequestMapping("/info", method = [RequestMethod.POST])
    @ResponseBody
    fun indexInfo(@RequestBody info: StockIndex): ResponseCommonBody {
        try {
            logger.info("OuterStockIndexController#indexInfo indexInfo {}", info)
            service.save(info.toStockIndexEntity())
        } catch (e: Exception) {
            logger.error("OuterStockIndexController#indexInfo error with:", e)
        }
        return ResponseCommonBody(
                msg = "ok"
        )
    }

    @RequestMapping("/all", method = [RequestMethod.GET])
    @ResponseBody
    fun allList(): List<String>? {
        return try {
            service.queryAll()?.stream()?.map { it.code }?.toList()
        } catch (e: Exception) {
            null
        }
    }

    companion object {
        val logger: Logger = LoggerFactory.getLogger(OuterStockIndexController::class.java)
    }
}