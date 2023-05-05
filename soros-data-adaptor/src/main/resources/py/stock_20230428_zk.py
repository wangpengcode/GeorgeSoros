import akshare as ak
import requests
import json

url='http://192.168.0.100:19889/soros/history/daily'
url_stock_list='http://192.168.0.100:19889/soros/info/all'
url_date_request='http://192.168.0.100:19889/soros/history/max/date/'
headers = {'content-type': 'application/json'}

r = requests.get(url=url_stock_list).text
for ro in r.split(","):
	a = ro.lstrip('[')
	a = a.rstrip(']')
	a = a.rstrip('"')
	a = a.lstrip('"')
	print(a)
	da = requests.get(url=url_date_request+a).text
	daJson = json.loads(da)
	start_date = daJson['maxDate']
	today = daJson['today']
	stock_zh_a_hist_df = ak.stock_zh_a_hist(symbol=a, period="daily", start_date=start_date, end_date=today, adjust="qfq")
	for index, row in stock_zh_a_hist_df.iterrows():
		s = '{"date":"'+str(row[0])+'","open":'+str(row[1])+',"close":'+str(row[2])+',"high":'+str(row[3])+',"low":'+str(row[4])+',"volume":'+str(row[5])+',"totalAmount":'+str(row[6])+',"range":'+str(row[7])+',"zdRange":'+str(row[8])+',"zdAmount":'+str(row[9])+',"change":'+str(row[10])+',"code":"'+str(a)+'"}'
		d =  json.dumps(eval(s))
		requests.post(url, data=d, headers=headers)

	
