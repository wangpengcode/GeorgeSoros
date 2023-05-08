import akshare as ak
import requests
import json

url_stock_list='http://192.168.0.100:19889/soros/index/info'
headers = {'content-type': 'application/json'}


stock_zh_index_spot_df = ak.stock_zh_index_spot()

for index, row in stock_zh_index_spot_df.iterrows():
    print(row[0]+','+row[1])
    s = '{"code":"'+str(row[0])+'","name":"'+str(row[1])+'"}'
    d = json.dumps(eval(s))
    requests.post(url_stock_list, data=d, headers=headers)