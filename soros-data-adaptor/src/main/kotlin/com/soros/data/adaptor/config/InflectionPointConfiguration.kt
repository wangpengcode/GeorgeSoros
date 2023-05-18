package com.soros.data.adaptor.config

import org.springframework.boot.context.properties.ConfigurationProperties
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration

@Configuration
@ConfigurationProperties(prefix = "inflection.config")
class InflectionPointConfiguration {
    var minInflectionPointDays = 6

    var inflectionPointJobCron: String = "0 10 18,22 * * ?"

    @Bean
    fun inflectionPointJobCron() : String {
        return inflectionPointJobCron
    }
}