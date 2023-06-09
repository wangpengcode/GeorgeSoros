package com.soros.data.adaptor

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.context.properties.EnableConfigurationProperties
import org.springframework.boot.runApplication
import org.springframework.scheduling.annotation.EnableAsync
import org.springframework.scheduling.annotation.EnableScheduling

@SpringBootApplication
@EnableScheduling
@EnableAsync
@EnableConfigurationProperties
class SorosDataAdaptorApplication

fun main(args: Array<String>) {
    runApplication<SorosDataAdaptorApplication>(*args)
}
