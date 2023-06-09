package com.soros.data.adaptor.job

import com.soros.data.adaptor.common.Commons.Companion.SCALE_OF_SOROS
import com.soros.data.adaptor.entity.StockHistoryEntity
import com.soros.data.adaptor.extension.toMarketEntity
import com.soros.data.adaptor.service.MarketHistoryPersistenceService
import com.soros.data.adaptor.service.StockHistoryPersistenceService
import com.soros.data.adaptor.service.StockIndexPersistenceService
import com.soros.data.adaptor.service.StockInfoPersistenceService
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.scheduling.annotation.Scheduled
import org.springframework.stereotype.Service
import org.springframework.util.CollectionUtils
import java.math.BigDecimal
import java.math.RoundingMode
import java.util.*
import kotlin.streams.toList

@Service
class MarketHistoryJob(
        val stockInfo: StockInfoPersistenceService,
        val indexInfo: StockIndexPersistenceService,
        val history: StockHistoryPersistenceService,
        val marketHistoryPersistenceService: MarketHistoryPersistenceService
) {

    private var shIndex: List<StockHistoryEntity>? = history.findByStockNo(SH_INDEX_CODE)
    private var szIndex: List<StockHistoryEntity>? = history.findByStockNo(SZ_INDEX_CODE)

    @Scheduled(cron = "#{@marketHistoryJobCron}")
    fun market() {
        szIndex?.sortedBy { it.date }?.forEach { outer ->
            val date = outer.date
            val shHistory = shIndex?.stream()?.filter { it.date == outer.date }?.toList()?.get(0)
            logger.info("market# date $date")
            val historyByDate = mutableListOf<StockHistoryEntity>()
            stockInfo.queryAll()?.forEach { inner ->
                history.findByCodeAndDate(inner.code, date)?.let { its ->
                    historyByDate.add(its)
                }
            }
            val market = historyByDate.toMarketEntity()?.let {entity->
                entity.apply {
                    sh_close = shHistory?.close
                    sz_close = outer.close
                }
                marketHistoryPersistenceService.save(entity)
            }
        }
        val allMarketHistories = marketHistoryPersistenceService.findAll()?.sortedBy { it.date }
        szIndex?.sortedBy { it.date }?.forEach { outer ->
            val date = outer.date
            val current = allMarketHistories?.find { it.date == date }
            val before = allMarketHistories?.filter { it.date <= date }
            if (Objects.nonNull(current) && !CollectionUtils.isEmpty(before)) {
                logger.info("market#average date $date")
                current.apply {
                    val zt_nums = before!!.filter { Objects.nonNull(it.zt_nums) }.map { it.zt_nums!!.toInt() }
                    this!!.average_zt_nums = if(!CollectionUtils.isEmpty(zt_nums)) (zt_nums.sumBy { it } / zt_nums.size).toBigInteger() else null

                    val dt_nums = before.filter { Objects.nonNull(it.dt_nums) }.map { it.dt_nums!!.toInt() }
                    this.average_dt_nums = if(!CollectionUtils.isEmpty(dt_nums)) (dt_nums.sumBy { it } / dt_nums.size).toBigInteger() else null

                    val profit_nums = before.filter { Objects.nonNull(it.profit_nums) }.map { it.profit_nums!!.toInt() }
                    this.average_profit_nums =if(!CollectionUtils.isEmpty(profit_nums)) (profit_nums.sumBy { it } / profit_nums.size).toBigInteger() else null

                    val loss_nums = before.filter { Objects.nonNull(it.loss_nums) }.map { it.loss_nums!!.toInt() }
                    this.average_loss_nums = if(!CollectionUtils.isEmpty(loss_nums)) (loss_nums.sumBy { it } / loss_nums.size).toBigInteger() else null

                    val market_total_amount = before.filter { Objects.nonNull(it.market_total_amount) }.map { it.market_total_amount!! }.toList()
                    this.average_market_total_amount = market_total_amount.stream().reduce(BigDecimal.ZERO,BigDecimal::add).divide(BigDecimal(market_total_amount.size), SCALE_OF_SOROS,RoundingMode.HALF_EVEN)

                    val open_loss_nums = before.filter { Objects.nonNull(it.open_loss_nums) }.map { it.open_loss_nums!!.toInt() }
                    this.average_open_loss_nums = if(!CollectionUtils.isEmpty(open_loss_nums)) (open_loss_nums.sumBy { it }/ open_loss_nums.size).toBigInteger() else null

                    val open_profit_nums = before.filter { Objects.nonNull(it.open_profit_nums) }.map { it.open_profit_nums!!.toInt() }
                    this.average_open_profit_nums = if(!CollectionUtils.isEmpty(open_profit_nums)) (open_profit_nums.sumBy { it }/ open_profit_nums.size).toBigInteger() else null

                    val open_high_close_down_nums = before.filter { Objects.nonNull(it.open_high_close_down_nums) }.map { it.open_high_close_down_nums!!.toInt() }
                    this.average_open_high_close_down_nums = if(!CollectionUtils.isEmpty(open_high_close_down_nums)) (open_high_close_down_nums.sumBy { it }/ open_high_close_down_nums.size).toBigInteger() else null

                    val open_down_close_high_nums =  before.filter { Objects.nonNull(it.open_down_close_high_nums) }.map { it.open_down_close_high_nums!!.toInt() }
                    this.average_open_down_close_high_nums = if(!CollectionUtils.isEmpty(open_down_close_high_nums)) (open_down_close_high_nums.sumBy { it }/ open_down_close_high_nums.size).toBigInteger() else null

                    val sh_close = before.filter { Objects.nonNull(it.sh_close) }.map { it.sh_close!! }
                    this.average_sh_close = sh_close.stream().reduce(BigDecimal.ZERO,BigDecimal::add).divide(BigDecimal(sh_close.size), SCALE_OF_SOROS,RoundingMode.HALF_EVEN)

                    val sz_close = before.filter { Objects.nonNull(it.sz_close) }.map { it.sh_close!! }
                    this.average_sz_close = sz_close.stream().reduce(BigDecimal.ZERO,BigDecimal::add).divide(BigDecimal(sz_close.size), SCALE_OF_SOROS,RoundingMode.HALF_EVEN)
                }
                marketHistoryPersistenceService.save(current!!)
            }
        }
    }

    companion object {
        val logger: Logger = LoggerFactory.getLogger(StatisticsJob::class.java)
        val SH_INDEX_CODE = "sh000001"
        val SZ_INDEX_CODE = "sz399001"
    }
}