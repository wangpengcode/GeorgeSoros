package com.soros.data.adaptor.dto.response.sz

data class SZMarketResponseDto(
        val list: List<Market>? = null,
)

class Market {
    lateinit var data: List<SZDaliy>
    lateinit var error: String
}


data class SZDaliy(
        val jyrq: String, // 交易日期
        val zqdm: String, // 证券代码
        val zqjc: String, // 证券简称
        val qss: String, // 前收
        val ks: String, // 开盘
        val zg: String, // 最高
        val zd: String, // 最低
        val ss: String, // 今收
        val sdf: String, // 涨跌幅<br>（%）
        val cjgs: String, // 成交量<br>(万股)
        val cjje: String, // 成交金额<br>(万元)
        val syl1: String, // 市盈率
)

//data class