package com.soros.data.adaptor.utils

import com.soros.data.adaptor.domain.bo.StockWaveBo
import com.soros.data.adaptor.domain.bo.StockWaveSingleBo
import com.soros.data.adaptor.enums.TrendInflectionPointType
import com.soros.data.adaptor.enums.WaveTypeEnum
import org.springframework.util.CollectionUtils
import java.util.*

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
        if (Objects.nonNull(preWaveBo) && (bo!!.hasNoInflection() && preWaveBo!!.hasNoInflection() && bo.waveTypeEnum != preWaveBo.waveTypeEnum)) {
            preWaveBo.inflectionPoint = preWaveBo.maxPoint
            if (preWaveBo.waveTypeEnum == WaveTypeEnum.FALL) {
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
        if (Objects.nonNull(preWaveBo) && (bo!!.hasNoInflection() && preWaveBo!!.hasNoInflection() && bo.waveTypeEnum == preWaveBo.waveTypeEnum)) {
            bo =mergeSameWaveSingleBo(preWaveBo, bo)
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
            waveTypeEnum = start.waveTypeEnum,
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