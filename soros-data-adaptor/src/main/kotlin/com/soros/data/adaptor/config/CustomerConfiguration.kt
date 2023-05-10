package com.soros.data.adaptor.config

import org.springframework.boot.context.properties.ConfigurationProperties
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration

@Configuration
@ConfigurationProperties(prefix = "customer.config")
class CustomerConfiguration {
    var startDate: String = "20100101"
    var historyHandleSize = 100

    @Bean
    fun startDate(): String {
        return startDate
    }

    @Bean
    fun historyHandleSize(): Int {
        return historyHandleSize
    }
}