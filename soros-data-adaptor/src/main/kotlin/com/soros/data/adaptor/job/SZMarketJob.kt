package com.soros.data.adaptor.job

import com.soros.data.adaptor.config.MarketJobConfiguration
import com.soros.data.adaptor.dto.request.sz.SZMarketRequestDto
import com.soros.data.adaptor.entity.StockHistoryEntity
import com.soros.data.adaptor.enums.MarketEnum
import com.soros.data.adaptor.market.ShenZhenMarket
import com.soros.data.adaptor.service.StockHistoryPersistenceService
import com.soros.data.adaptor.service.StockInfoPersistenceService
import com.soros.data.adaptor.transformer.toStockHistoryEntity
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.scheduling.annotation.Scheduled
import org.springframework.stereotype.Service
import org.springframework.util.CollectionUtils
import java.sql.Timestamp
import java.time.LocalDate
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter
import java.util.*
import kotlin.streams.toList

@Service
class SZMarketJob(
        val history: StockHistoryPersistenceService,
        val shenZhenMarket: ShenZhenMarket,
        val marketConfig: MarketJobConfiguration,
        val info: StockInfoPersistenceService,
) {
    private val formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd")

    @Scheduled(cron = "#{@szMarketHistoryJobCron}")
    fun szMarket() {
        logger.info("SZMarketJob#szMarket start ")
        val szStocks = info.queryAll()?.filter { MarketEnum.SZ.name.equals(it.market, ignoreCase = true) }?.toList()
        val now = LocalDateTime.now().format(formatter)
//        szStocks?.forEach {
//            history.deleteAfterDateByStockNo(it.code, "2023-05-23")
//        }
//        logger.info("SZMarketJob#szMarket delete after 2023-05-23 succeed ")
//        return
        szStocks?.forEach {
            var maxDate = history.findMaxDateByStockNo(it.code)
            maxDate = if (Objects.isNull(maxDate)) START_DATE else maxDate
            if (maxDate!! >= now) {
                return@forEach
            }
            var list: List<StockHistoryEntity>? = null
            do {
                val startDay = LocalDate.parse(maxDate).plusDays(1)
                val endDay = LocalDate.parse(maxDate).plusDays(marketConfig.szInterval.toLong())
                val stockNo = it.code
                val request = SZMarketRequestDto(
                        url = marketConfig.szMarketUrl,
                        txtDMorJC = stockNo,
                        txtBeginDate = startDay.format(formatter),
                        txtEndDate = endDay.format(formatter)
                )
                list = shenZhenMarket.process(request)?.stream()?.map { it.toStockHistoryEntity() }?.toList()
                list?.let { it2 ->
                    try {
                        history.saveAll(it2)
                        logger.info("SZMarketJob#code $stockNo save succeed")
                    } catch (e: Exception) {
                        logger.error("SZMarketJob#code $stockNo save with error", e)
                    }
                }
                Thread.sleep( 10 * 60 * 1000)
                maxDate = history.findMaxDateByStockNo(it.code)!!
            } while (maxDate!! <= now && !CollectionUtils.isEmpty(list))
        }
        logger.info("SZMarketJob#szMarket end ")
    }

    companion object {
        val START_DATE = "2010-01-01"
        val logger: Logger = LoggerFactory.getLogger(SZMarketJob::class.java)
    }
}