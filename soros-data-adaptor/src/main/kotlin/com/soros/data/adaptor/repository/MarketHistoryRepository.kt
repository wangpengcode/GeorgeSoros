package com.soros.data.adaptor.repository

import com.soros.data.adaptor.entity.MarketEntity
import org.springframework.data.repository.CrudRepository

interface MarketHistoryRepository : CrudRepository<MarketEntity, String>