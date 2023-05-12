package com.soros.data.adaptor.extension

import com.fasterxml.jackson.databind.ObjectMapper
import com.google.gson.Gson
import org.springframework.util.CollectionUtils
import org.springframework.util.StringUtils
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
        mapper.readValue(this,mapper.typeFactory.constructCollectionType(List::class.java, elementType))
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