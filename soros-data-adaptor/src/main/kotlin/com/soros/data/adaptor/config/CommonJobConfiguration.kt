package com.soros.data.adaptor.config

import org.springframework.boot.context.properties.ConfigurationProperties
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration

@Configuration
@ConfigurationProperties(prefix = "common.config")
class CommonJobConfiguration {
    var historyJobForClearListCron: String = " 0 38 21,8 * * ?"

    @Bean
    fun historyJobForClear(): String {
        return historyJobForClearListCron
    }
}