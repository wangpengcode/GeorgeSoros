package com.soros.data.adaptor.utils

import com.soros.data.adaptor.common.Commons.Companion.SCALE_OF_SOROS
import com.soros.data.adaptor.domain.bo.InflectionPoint
import com.soros.data.adaptor.domain.bo.StockTrendWaveBo
import com.soros.data.adaptor.domain.bo.StockWaveBo
import com.soros.data.adaptor.enums.InflectionPointType
import com.soros.data.adaptor.enums.TrendMultiType
import com.soros.data.adaptor.enums.WaveDirectionEnum
import com.soros.data.adaptor.extension.*
import org.springframework.util.CollectionUtils
import java.math.BigDecimal
import java.math.RoundingMode
import java.util.*

/***
 * 五：趋势合并
 * 大趋势正确
 */
fun List<StockTrendWaveBo>.bigTrend(): List<StockTrendWaveBo> {
    if (this.size < 3) {
        return this
    }
    var i = 0
    var pre = this[0]
    var result = mutableListOf<StockTrendWaveBo>()
    while (i < this.size - 2) {
        val first = this[i]
        val third = this[i + 2]
        if (first.isUpTrend() && third.endInflectionPoint!!.getValue() > first.endInflectionPoint!!.getValue()) {
            // 上涨趋势继续
            pre.apply {
                waveDirectionEnum = WaveDirectionEnum.RISE
                endInflectionPoint = third.endInflectionPoint
                range = endInflectionPoint!!.getValue().subtract(startInflectionPoint!!.getValue()).divide(startInflectionPoint!!.getValue(), SCALE_OF_SOROS, RoundingMode.HALF_EVEN)
            }
            i += 2
            continue
        } else if (first.isDownTrend() && third.endInflectionPoint!!.getValue() < first.endInflectionPoint!!.getValue()) {
            // 下跌趋势继续
            pre.apply {
                waveDirectionEnum = WaveDirectionEnum.FALL
                endInflectionPoint = third.endInflectionPoint
                range = endInflectionPoint!!.getValue().subtract(startInflectionPoint!!.getValue()).divide(startInflectionPoint!!.getValue(), SCALE_OF_SOROS, RoundingMode.HALF_EVEN)
            }
            i += 2
            continue
        } else {
            if (first.isUpTrend()) {
                pre.apply {
                    range = endInflectionPoint!!.getValue().subtract(startInflectionPoint!!.getValue()).divide(startInflectionPoint!!.getValue(), SCALE_OF_SOROS, RoundingMode.HALF_EVEN)
                }
                result.add(pre)
                pre = this[i + 1]
                pre.apply {
                    waveDirectionEnum = WaveDirectionEnum.FALL
                }
                i++
            } else {
                pre.apply {
                    range = endInflectionPoint!!.getValue().subtract(startInflectionPoint!!.getValue()).divide(startInflectionPoint!!.getValue(), SCALE_OF_SOROS, RoundingMode.HALF_EVEN)
                }
                result.add(pre)
                pre = this[i + 1]
                pre.apply {
                    waveDirectionEnum = WaveDirectionEnum.RISE
                }
                i++
            }
            continue
        }
    }
    result.add(pre)
    return result
}


/**
 * 四：落差法判断趋势
 * 从第二点开始,下一个值减去上一个值大于0;则为升差
 * 若下一个值减去上一个值小于0;则为落差
 * 上一个点若为波峰,下一个值也为波峰,则上一个升差+（下一个值-上一个值）
 * 上一个点若为波谷,下一个值也为波谷,则上一个落差+（下一个值-上一个值）
 */
fun List<InflectionPoint>.littleTrend(): List<StockTrendWaveBo>? {
    if (CollectionUtils.isEmpty(this) || this.size < 3) {
        return null
    }
    val result = mutableListOf<StockTrendWaveBo>()
    var i = 1
    var lastDownTrendValue = BigDecimal.ZERO
    var lastUpTrendValue = BigDecimal.ZERO
    var preTrendWave = StockTrendWaveBo(
            code = this[0].code,
            startInflectionPoint = this[0],
            waveDirectionEnum = if (this[1].isMax()) WaveDirectionEnum.RISE else WaveDirectionEnum.FALL,
            range = BigDecimal.ZERO,
            trendMultiType = TrendMultiType.M
    )
    var lastDownTrendAmount: BigDecimal = preTrendWave.startInflectionPoint!!.getValue()
    var lastUpTrendAmount: BigDecimal = BigDecimal.ZERO

    while (i < this.size - 3) {
        var currentValue: BigDecimal
        val pre = this[i - 1]
        val current = this[i]
        if (current.isMax() && pre.isMax()) {
            lastUpTrendValue = lastUpTrendValue.add(current.getValue().subtract(pre.getValue()))
            lastUpTrendAmount = current.getValue()
            // 趋势持续
            preTrendWave.apply {
                endInflectionPoint = current
            }
            i++
            continue
        } else if (current.isMin() && pre.isMin()) {
            lastDownTrendValue = lastDownTrendValue.add(current.getValue().subtract(pre.getValue()))
            lastDownTrendAmount = current.getValue()
            // 趋势持续
            preTrendWave.apply {
                endInflectionPoint = current
            }
            i++
            continue
        } else {
            currentValue = current.getValue().subtract(pre.getValue())
            if (currentValue > BigDecimal.ZERO
                    && preTrendWave.isUpTrend()
                    && current.getValue() > lastUpTrendAmount) {
                // 趋势延续
                lastUpTrendAmount = current.getValue()
                preTrendWave.apply {
                    endInflectionPoint = current
                }
            } else if (currentValue < BigDecimal.ZERO
                    && preTrendWave.isDownTrend()
                    && current.getValue() < lastDownTrendAmount) {
                // 趋势延续
                lastDownTrendAmount = current.getValue()
                preTrendWave.apply {
                    endInflectionPoint = current
                }
            } else {
                // 趋势反转
                preTrendWave.apply {
                    range = endInflectionPoint!!.getValue().subtract(startInflectionPoint!!.getValue()).divide(startInflectionPoint!!.getValue(), SCALE_OF_SOROS, RoundingMode.HALF_EVEN)
                }
                result.add(preTrendWave)
                preTrendWave = StockTrendWaveBo(
                        code = current.code,
                        startInflectionPoint = preTrendWave.endInflectionPoint,
                        endInflectionPoint = current,
                        waveDirectionEnum = if (current.isMax()) WaveDirectionEnum.RISE else WaveDirectionEnum.FALL,
                        range = BigDecimal.ZERO,
                        trendMultiType = TrendMultiType.M
                ).apply {
                    range = endInflectionPoint!!.getValue().subtract(startInflectionPoint!!.getValue()).divide(startInflectionPoint!!.getValue(), SCALE_OF_SOROS, RoundingMode.HALF_EVEN)
                }
            }
        }
        i++
    }
    return result
}

/**
 * 三：波峰波谷
 */
fun List<InflectionPoint>.findPeekAndValley(): List<InflectionPoint>? {
    if (CollectionUtils.isEmpty(this) && this.size < 20) {
        return null
    }
    val rawPeeks = this.filter { it.type == InflectionPointType.MAX }.sortedBy { it.date }
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

    val valleyList = this.filter { it.type == InflectionPointType.MIN }.sortedBy { it.date }
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
 * 二： 合并; 测试正确
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
            if (currentPoint.type == InflectionPointType.MIN && (currentPoint.low!! < lastPoint.low)) {
                result.add(currentPoint)
            }
            if (currentPoint.type == InflectionPointType.MAX && (currentPoint.high != null) && (currentPoint.high!! > lastPoint.high)) {
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
 * 一： 拐点,在某一小区间内的极值点定义为拐点,测试正确
 */
fun List<StockWaveBo>.findInflectionPoint(inflectionPointDays: Int): List<InflectionPoint>? {
    if (CollectionUtils.isEmpty(this) || this.size < 2 * inflectionPointDays + 1) {
        return null
    }
    val sortedList = this.sortedBy { it.date }
    val result = mutableListOf(InflectionPoint(code = sortedList[0].code, date = sortedList[0].date, close = sortedList[0].close, high = sortedList[0].high, low = sortedList[0].low, type = InflectionPointType.MAX))
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
                    type = InflectionPointType.MAX
            )
        }
        if (min.date != startDay.date && min.date != endDay.date) {
            minInflection = InflectionPoint(
                    code = min.code,
                    date = min.date,
                    close = min.close,
                    high = min.high,
                    low = min.low,
                    type = InflectionPointType.MIN
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
                        type = InflectionPointType.MAX
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
                        type = InflectionPointType.MAX
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
                        type = InflectionPointType.MIN
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
                        type = InflectionPointType.MIN
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