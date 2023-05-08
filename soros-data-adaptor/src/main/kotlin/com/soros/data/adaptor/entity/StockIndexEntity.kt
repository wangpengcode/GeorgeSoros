package com.soros.data.adaptor.entity

import org.springframework.data.jpa.domain.support.AuditingEntityListener
import javax.persistence.*

@Entity
@Table(name = "stock_index")
@EntityListeners(AuditingEntityListener::class)
data class StockIndexEntity(
        @Id
        @Column(name = "code", length = 20)
        val code: String,

        /** **/
        @Column(name = "name", length = 64)
        val name: String,
)