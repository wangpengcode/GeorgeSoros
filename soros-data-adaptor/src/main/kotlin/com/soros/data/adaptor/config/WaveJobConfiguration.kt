package com.soros.data.adaptor.config

import org.springframework.boot.context.properties.ConfigurationProperties
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import java.math.BigDecimal

@Configuration
@ConfigurationProperties(prefix = "wave.config")
class WaveJobConfiguration {
    var waveJobCron: String = " 0 38 21,8 * * ?"
    var bigTrendJobCron: String = " 0 38 21,8 * * ?"

    var range = 0.5

    var multiWaveInterval = 44

    var inflectionPointDays = 20



    @Bean
    fun waveJobCron(): String {
        return waveJobCron
    }

    @Bean
    fun bigTrendJobCron(): String {
        return bigTrendJobCron
    }
}