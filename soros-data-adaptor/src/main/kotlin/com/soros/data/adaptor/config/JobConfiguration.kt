package com.soros.data.adaptor.config

import org.springframework.boot.context.properties.ConfigurationProperties
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration

@Configuration
@ConfigurationProperties(prefix = "schedule.job")
class JobConfiguration {
    var statisticsJobCron: String = " 0 38 17,21,8 * * ?"

    var statisticsJobCronSwitch: String = "OFF"
    @Bean
    fun statisticsJobCron(): String {
        return statisticsJobCron
    }
}