package com.soros.data.adaptor.utils

import com.soros.data.adaptor.domain.bo.InflectionPoint
import com.soros.data.adaptor.domain.bo.StockTrendWaveBo
import com.soros.data.adaptor.domain.bo.StockWaveBo
import com.soros.data.adaptor.domain.bo.StockWaveSingleBo
import com.soros.data.adaptor.enums.TrendInflectionPointType
import com.soros.data.adaptor.enums.WaveDirectionEnum
import org.springframework.util.CollectionUtils
import java.util.*

/***
 * 下降趋势,随之而来的高点逐步降低,低点越来越低
 * 上升趋势,随之而来低高点逐步提升,低点越来越高
 */
fun List<InflectionPoint>.upTrend(): List<StockTrendWaveBo>? {
    if (CollectionUtils.isEmpty(this) || this.size < 3) {
        return null
    }
    return null
}


fun List<InflectionPoint>.findPeekAndValley(): List<InflectionPoint>? {
    if (CollectionUtils.isEmpty(this) && this.size < 20) {
        return null
    }
    val rawPeeks = this.filter { it.type == TrendInflectionPointType.MAX }.sortedBy { it.date }
    var i = 1
    val peeks = mutableListOf<InflectionPoint>()
    if (rawPeeks.isNotEmpty())
        peeks.add(rawPeeks[0])

    while (i < rawPeeks.size - 2 && (rawPeeks.isNotEmpty() && rawPeeks.size > 4)) {
        if ((rawPeeks[i].high!! > rawPeeks[i - 1].high) && rawPeeks[i].high!! > rawPeeks[i + 1].high) {
            peeks.add(rawPeeks[i])
        }
        i++
    }

    val valleyList = this.filter { it.type == TrendInflectionPointType.MIN }.sortedBy { it.date }
    i = 1
    val valleys = mutableListOf<InflectionPoint>()
    if (valleys.isNotEmpty())
        valleys.add(valleyList[0])

    while (i < valleyList.size - 2 && (valleyList.isNotEmpty() && valleyList.size > 4)) {
        if ((valleyList[i].low!! < valleyList[i - 1].low) && valleyList[i].low!! < valleyList[i + 1].low) {
            peeks.add(valleyList[i])
        }
        i++
    }

    val newList = peeks + valleys
    return newList.sortedBy { it.date }
}

/**
 * 合并; 测试正确
 * **/
fun List<InflectionPoint>.merge(): List<InflectionPoint>? {
    if (CollectionUtils.isEmpty(this)) {
        return null
    }
    val newList = this.sortedBy { it.date }
    val result = mutableListOf<InflectionPoint>()
    var current = 0
    var last = 0
    while (last < newList.size - 1) {
        last = current + 1
        val currentPoint = newList[current]
        val lastPoint = newList[last]
        if (currentPoint.type == lastPoint.type) {
            if (currentPoint.type == TrendInflectionPointType.MIN && (currentPoint.low!! < lastPoint.low)) {
                result.add(currentPoint)
            }
            if (currentPoint.type == TrendInflectionPointType.MAX && (currentPoint.high != null) && (currentPoint.high!! > lastPoint.high)) {
                result.add(currentPoint)
            }
            current++
            continue
        } else {
            result.add(currentPoint)
            current++
        }
    }
    return result
}

/**
 * 拐点,在某一小区间内的极值点定义为拐点,测试正确
 */
fun List<StockWaveBo>.findInflectionPoint(inflectionPointDays: Int): List<InflectionPoint>? {
    if (CollectionUtils.isEmpty(this) || this.size < 2 * inflectionPointDays + 1) {
        return null
    }
    val sortedList = this.sortedBy { it.date }
    val result = mutableListOf(InflectionPoint(code = sortedList[0].code, date = sortedList[0].date, close = sortedList[0].close, high = sortedList[0].high, low = sortedList[0].low, type = TrendInflectionPointType.MAX))
    var start = 0
    var end = 0
    var endAmend = 0 // 终点修正
    while (start < sortedList.size - 2 * inflectionPointDays && end < sortedList.size - 1) {
        end = start + inflectionPointDays + endAmend
        val currentSegment = sortedList.subList(start, end)
        val startDay = currentSegment[0]
        val endDay = currentSegment[currentSegment.size - 1]
        val max = currentSegment.stream().max(Comparator.comparing(StockWaveBo::high)).get()
        val min = currentSegment.stream().min(Comparator.comparing(StockWaveBo::low)).get()
//        var inflection: InflectionPoint? = null
        var maxInflection: InflectionPoint? = null
        var minInflection: InflectionPoint? = null
        if (max.date != startDay.date && max.date != endDay.date) {

            maxInflection = InflectionPoint(
                    code = max.code,
                    date = max.date,
                    close = max.close,
                    high = max.high,
                    low = max.low,
                    type = TrendInflectionPointType.MAX
            )
        }
        if (min.date != startDay.date && min.date != endDay.date) {
            minInflection = InflectionPoint(
                    code = min.code,
                    date = min.date,
                    close = min.close,
                    high = min.high,
                    low = min.low,
                    type = TrendInflectionPointType.MIN
            )
        }

        if (max.date == endDay.date && (end < sortedList.size - 4)) {
            val lastMax = sortedList.subList(end, end + 3).stream().max(Comparator.comparing(StockWaveBo::high)).get()
            if (lastMax.high < max.high) {
                maxInflection = InflectionPoint(
                        code = max.code,
                        date = max.date,
                        close = max.close,
                        high = max.high,
                        low = max.low,
                        type = TrendInflectionPointType.MAX
                )
            }
        }

        if (max.date == startDay.date && start > 3) {
            val lastMax = sortedList.subList(start - 3, start).stream().max(Comparator.comparing(StockWaveBo::high)).get()
            if (lastMax.high < max.high) {
                maxInflection = InflectionPoint(
                        code = max.code,
                        date = max.date,
                        close = max.close,
                        high = max.high,
                        low = max.low,
                        type = TrendInflectionPointType.MAX
                )
            }
        }

        if (min.date == endDay.date && (end < sortedList.size - 4)) {
            val lastLow = sortedList.subList(end, end + 3).stream().max(Comparator.comparing(StockWaveBo::low)).get()
            if (lastLow.low > min.low) {
                minInflection = InflectionPoint(
                        code = min.code,
                        close = min.close,
                        date = min.date,
                        low = min.low,
                        high = min.low,
                        type = TrendInflectionPointType.MIN
                )
            }
        }

        if (min.date == startDay.date && start > 3) {
            val beforeLow = sortedList.subList(start - 3, start).stream().max(Comparator.comparing(StockWaveBo::low)).get()
            if (beforeLow.low > min.low) {
                minInflection = InflectionPoint(
                        code = min.code,
                        close = min.close,
                        date = min.date,
                        low = min.low,
                        high = min.high,
                        type = TrendInflectionPointType.MIN
                )
            }
        }

        if (Objects.nonNull(minInflection) || Objects.nonNull(maxInflection)) {
            endAmend = 0
            maxInflection?.let { result.add(it) }
            minInflection?.let { result.add(it) }
        } else {
            endAmend += 2
            continue
        }
        start = end
    }
    return result
}


fun List<StockWaveBo>.getStockWaveSingleBo(inflectionPointDays: Int): List<StockWaveSingleBo>? {
    if (this.isEmpty() || this.size < inflectionPointDays) {
        return null
    }
    val result: MutableList<StockWaveSingleBo> = mutableListOf()
    val newList = this.sortedBy { it.date }
    var times = 0
    var preWaveBo: StockWaveSingleBo? = null
    while (!CollectionUtils.isEmpty(getSubList(newList, times, inflectionPointDays))) {
        val currentSegment: List<StockWaveBo> = getSubList(newList, times, inflectionPointDays)!!
        var bo: StockWaveSingleBo? = handleStockWaveSingleBo(currentSegment)
        if (Objects.isNull(bo)) {
            break
        }
        // 两个相反方向趋势,无拐点,则两个趋势的交汇点即为拐点
        if (Objects.nonNull(preWaveBo) && (bo!!.hasNoInflection() && preWaveBo!!.hasNoInflection() && bo.waveDirectionEnum != preWaveBo.waveDirectionEnum)) {
            preWaveBo.inflectionPoint = preWaveBo.maxPoint
            if (preWaveBo.waveDirectionEnum == WaveDirectionEnum.FALL) {
                preWaveBo.inflectionPointType = TrendInflectionPointType.MIN
            } else {
                preWaveBo.inflectionPointType = TrendInflectionPointType.MAX
            }
            result.add(preWaveBo)
            preWaveBo = bo
            times++
            continue
        }
        // 两个相同方向趋势,无拐点进行叠加
        if (Objects.nonNull(preWaveBo) && (bo!!.hasNoInflection() && preWaveBo!!.hasNoInflection() && bo.waveDirectionEnum == preWaveBo.waveDirectionEnum)) {
            bo = mergeSameWaveSingleBo(preWaveBo, bo)
        }

        times++
        preWaveBo = bo
    }
    return result
}

fun StockWaveSingleBo.hasNoInflection(): Boolean {
    return this.inflectionPointType == null
}

fun mergeSameWaveSingleBo(start: StockWaveSingleBo, end: StockWaveSingleBo): StockWaveSingleBo {
    return StockWaveSingleBo(
            waveDirectionEnum = start.waveDirectionEnum,
            maxPoint = end.maxPoint,
            minPoint = start.minPoint
    )
}

fun handleStockWaveSingleBo(list: List<StockWaveBo>): StockWaveSingleBo? {


    return null
}

fun getSubList(list: List<StockWaveBo>, times: Int, batchSize: Int): List<StockWaveBo>? {
    if (CollectionUtils.isEmpty(list)) {
        return null
    }
    val start = times * batchSize
    val end = start + batchSize
    if (end > list.size) {
        return list.subList(start, list.size)
    }
    return list.subList(start, end)
}