package com.soros.data.adaptor.webhook

import com.soros.data.adaptor.dto.request.StockDailyDataDto
import com.soros.data.adaptor.dto.response.ResponseCommonBody
import com.soros.data.adaptor.dto.response.ResponseStockInfo
import com.soros.data.adaptor.entity.StockHistoryEntity
import com.soros.data.adaptor.transformer.toStockHistoryEntity
import com.soros.data.adaptor.service.StockHistoryPersistenceService
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.dao.DataIntegrityViolationException
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.*
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

@Controller
@RequestMapping("/history")
class OuterStockHistoryByDailyController(
        val service: StockHistoryPersistenceService
) {
    private val historyEntities = mutableListOf<StockHistoryEntity>()

    @RequestMapping("/daily", method = [RequestMethod.POST])
    @ResponseBody
    fun dailyData(@RequestBody stock: StockDailyDataDto): ResponseCommonBody {
        logger.info("OuterStockHistoryByDailyController#dailyData stock{}.", stock)
        try {
            saveHistoryEntity(stock.toStockHistoryEntity())
        } catch (e: DataIntegrityViolationException) {

        } catch (e: Exception) {
            logger.error("OuterStockHistoryByDailyController#dailyData error:", e)
        }
        return ResponseCommonBody(
                msg = "ok"
        )
    }

    private fun saveHistoryEntity(entity: StockHistoryEntity) {
        historyEntities.add(entity)
        if (historyEntities.size >= SAVE_ENTITIES_SIZE) {
            try {
                service.saveAll(historyEntities)
            } catch (e: Exception) {
                historyEntities.forEach {
                    try {
                        service.save(it)
                    } catch (e: Exception) {
                        if (e !is DataIntegrityViolationException) {
                            logger.error("OuterStockHistoryByDailyController#saveHistoryEntity with error:", e)
                        }
                    }
                }
            }
            historyEntities.clear()
            logger.info("OuterStockHistoryByDailyController#saveHistoryEntity save $SAVE_ENTITIES_SIZE.")
        }
    }

    @RequestMapping("/max/date/{stockNo}", method = [RequestMethod.GET])
    @ResponseBody
    fun findMaxDateByNo(@PathVariable stockNo: String): ResponseStockInfo {
        var maxDate: String? = null
        val now = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd"))
        try {
            maxDate = service.findMaxDateByStockNo(stockNo)
        } catch (e: Exception) {
            logger.error("OuterStockHistoryByDailyController#findMaxDateByNo error", e)
        }
        return ResponseStockInfo(
                maxDate = if (maxDate == null || maxDate == "") "20200101"
                else (maxDate.replace("-", "").toInt() + 1).toString(),
                today = now.toString()
        )
    }

    companion object {
        const val SAVE_ENTITIES_SIZE: Int = 300
        val logger: Logger = LoggerFactory.getLogger(OuterStockHistoryByDailyController::class.java)
    }
}