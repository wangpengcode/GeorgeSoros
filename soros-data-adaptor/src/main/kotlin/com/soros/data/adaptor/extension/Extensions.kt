package com.soros.data.adaptor.extension

import com.fasterxml.jackson.databind.ObjectMapper
import com.google.gson.Gson
import com.soros.data.adaptor.common.Commons.Companion.INFLECTION_POINT_DAYS
import com.soros.data.adaptor.domain.bo.InflectionPoint
import com.soros.data.adaptor.domain.bo.StockTrendWaveBo
import com.soros.data.adaptor.entity.StockHistoryEntity
import com.soros.data.adaptor.enums.InflectionPointType
import com.soros.data.adaptor.enums.WaveDirectionEnum
import com.soros.data.adaptor.transformer.toStockWaveBo
import com.soros.data.adaptor.utils.*
import org.springframework.util.CollectionUtils
import org.springframework.util.StringUtils
import java.math.BigDecimal
import kotlin.streams.toList

var mapper: ObjectMapper = ObjectMapper()

fun Any.toJson(): String {
    val gson = Gson()
    return gson.toJson(this)
}

inline fun <reified T> String.fromJson(): T {
    val gson = Gson()
    return gson.fromJson(this, T::class.java)
}

inline fun <reified T> String.fromListJson(elementType: Class<T>): List<T> {
    return try {
        mapper.readValue(this, mapper.typeFactory.constructCollectionType(List::class.java, elementType))
    } catch (e: Exception) {
        emptyList()
    }
}

inline fun <reified T> List<String>.fromJson(): List<T> {
    if (CollectionUtils.isEmpty(this)) {
        return emptyList()
    }
    return this.stream().filter { !StringUtils.isEmpty(it) }.map { it.fromJson<T>() }.toList()
}

fun InflectionPoint.isMax(): Boolean {
    return this.type == InflectionPointType.MAX
}

fun InflectionPoint.isMin(): Boolean {
    return this.type == InflectionPointType.MIN
}

fun isAllMax(first: InflectionPoint, second: InflectionPoint, third: InflectionPoint): Boolean {
    return first.type == InflectionPointType.MAX && second.type == InflectionPointType.MAX && third.type == InflectionPointType.MAX
}

fun isAllMin(first: InflectionPoint, second: InflectionPoint, third: InflectionPoint): Boolean {
    return first.type == InflectionPointType.MIN && second.type == InflectionPointType.MIN && third.type == InflectionPointType.MIN
}

fun InflectionPoint.getValue(): BigDecimal {
    return if (this.type == InflectionPointType.MAX) {
        return if (this.high != null) this.high!! else BigDecimal.ZERO
    } else {
        return if (this.low != null) this.low!! else BigDecimal.ZERO
    }
}

fun StockTrendWaveBo.isUpTrend(): Boolean {
    return this.waveDirectionEnum == WaveDirectionEnum.RISE
}

fun StockTrendWaveBo.isDownTrend(): Boolean {
    return this.waveDirectionEnum == WaveDirectionEnum.FALL
}

fun StockTrendWaveBo.trendValue(): BigDecimal {
    return if (this.waveDirectionEnum == WaveDirectionEnum.RISE) this.range else this.range.negate()
}

fun List<StockHistoryEntity>.findBigTrend(): List<StockTrendWaveBo>? {
    return this.map { it.toStockWaveBo() }.findInflectionPoint(INFLECTION_POINT_DAYS)?.merge()?.findPeekAndValley()?.littleTrend()?.bigTrend()
}

fun List<StockHistoryEntity>.findLittleTrend(): List<StockTrendWaveBo>? {
    return this.map { it.toStockWaveBo() }.findInflectionPoint(INFLECTION_POINT_DAYS)?.merge()?.findPeekAndValley()?.littleTrend()
}

fun List<StockHistoryEntity>.findPeekAndValley(): List<InflectionPoint>? {
    return this.map { it.toStockWaveBo() }.findInflectionPoint(INFLECTION_POINT_DAYS)?.merge()?.findPeekAndValley()
}
