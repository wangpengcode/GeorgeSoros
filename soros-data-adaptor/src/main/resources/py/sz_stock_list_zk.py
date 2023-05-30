import akshare as ak

import requests
import json

url='http://192.168.0.100:19889/soros/info/stock'
headers = {'content-type': 'application/json'}

stock_zh_a_hist_df = ak.stock_info_sz_name_code(indicator="A股列表")
print(stock_zh_a_hist_df)
for index, row in stock_zh_a_hist_df.iterrows():
	s = '{"code":"'+str(row[1])+'","name":"'+str(row[2])+'","ipoDate":"'+str(row[3])+'","totalCapital":'+str(row[4]).replace(',','')+',"flowCapital":'+str(row[5]).replace(',','')+',"industry":"'+str(row[6])+'","market":"sz"}'
	d =  json.dumps(eval(s))
	r = requests.post(url, data=d, headers=headers)
	
