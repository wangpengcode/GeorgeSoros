import akshare as ak

import requests
import json

url='http://192.168.0.100:19889/soros/info/stock'
headers = {'content-type': 'application/json'}

stock_zh_a_hist_df = ak.stock_info_sh_name_code(symbol="主板A股")
print(stock_zh_a_hist_df)
for index, row in stock_zh_a_hist_df.iterrows():
    s = '{"code":"'+str(row[0])+'","name":"'+str(row[1])+'","fullName":"'+str(row[2])+'","ipoDate":"'+str(row[3])+'","market":"sh"}'
    d =  json.dumps(eval(s))
    r = requests.post(url, data=d, headers=headers)

stock_zh_a_hist_df = ak.stock_info_sh_name_code(symbol="科创板")
print(stock_zh_a_hist_df)
for index, row in stock_zh_a_hist_df.iterrows():
    s = '{"code":"'+str(row[0])+'","name":"'+str(row[1])+'","fullName":"'+str(row[2])+'","ipoDate":"'+str(row[3])+'","market":"sh"}'
    d =  json.dumps(eval(s))
    r = requests.post(url, data=d, headers=headers)