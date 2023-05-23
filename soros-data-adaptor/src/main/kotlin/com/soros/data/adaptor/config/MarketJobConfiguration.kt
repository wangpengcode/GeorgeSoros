package com.soros.data.adaptor.config

import org.springframework.boot.context.properties.ConfigurationProperties
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import java.math.BigDecimal

@Configuration
@ConfigurationProperties(prefix = "market.config")
class MarketJobConfiguration {
    var marketJobCron: String = " 0 38 21,8 * * ?"

    @Bean
    fun marketHistoryJobCron(): String {
        return marketJobCron
    }
}