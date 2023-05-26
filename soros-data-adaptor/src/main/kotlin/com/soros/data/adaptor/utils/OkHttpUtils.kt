package com.soros.data.adaptor.utils

import okhttp3.OkHttpClient
import okhttp3.Request


//fun main() {
//    val okHttpClient = OkHttpClient.Builder().followRedirects(false).build()
//
//    var request = Request.Builder()
//            .url("http://www.szse.cn/api/report/ShowReport/data?SHOWTYPE=JSON&CATALOGID=1815_stock_snapshot&TABKEY=tab1&txtDMorJC=000001&txtBeginDate=2023-05-23&txtEndDate=2023-05-24&archiveDate=2021-05-06")
//            .build()
//
//    var call = okHttpClient.newCall(request)
//    var response = call.execute()
//    println(response.body?.string())
//}