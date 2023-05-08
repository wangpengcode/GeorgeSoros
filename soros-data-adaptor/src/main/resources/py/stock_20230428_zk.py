import akshare as ak
import requests
import json

url='http://192.168.0.100:19889/soros/history/daily'
url_stock_list='http://192.168.0.100:19889/soros/info/all'
url_date_request='http://192.168.0.100:19889/soros/history/max/date/'
url_all_index='http://192.168.0.100:19889/soros/index/all'
headers = {'content-type': 'application/json'}

r = requests.get(url=url_stock_list).text
for ro in r.split(","):
	try:
		a = ro.lstrip('[')
		a = a.rstrip(']')
		a = a.rstrip('"')
		a = a.lstrip('"')
		print(a)
		da = requests.get(url=url_date_request+a).text
		daJson = json.loads(da)
		start_date = daJson['maxDate']
		today = daJson['today']
		if start_date >= today:
			continue
		if a.startswith('688'):
			stock_zh_a_hist_df = ak.stock_zh_kcb_daily(symbol="sh"+a, adjust="qfq")
			for index, row in stock_zh_a_hist_df.iterrows():
				s = '{"date":"'+str(row[0])+'","open":'+str(row[1])+',"high":'+str(row[2])+',"low":'+str(row[3])+',"close":'+str(row[4])+',"volume":'+str(row[5])+',"totalAmount":'+str(0)+',"range":'+str(0)+',"zdRange":'+str(0)+',"zdAmount":'+str(0)+',"change":'+str(row[9])+',"code":"'+str(a)+'"}'
				d =  json.dumps(eval(s))
				requests.post(url, data=d, headers=headers)
		else:
			stock_zh_a_hist_df = ak.stock_zh_a_hist(symbol=a, period="daily", start_date=start_date, end_date=today, adjust="qfq")
			for index, row in stock_zh_a_hist_df.iterrows():
				s = '{"date":"'+str(row[0])+'","open":'+str(row[1])+',"close":'+str(row[2])+',"high":'+str(row[3])+',"low":'+str(row[4])+',"volume":'+str(row[5])+',"totalAmount":'+str(row[6])+',"range":'+str(row[7])+',"zdRange":'+str(row[8])+',"zdAmount":'+str(row[9])+',"change":'+str(row[10])+',"code":"'+str(a)+'"}'
				d =  json.dumps(eval(s))
				requests.post(url, data=d, headers=headers)
	except BaseException:
		continue

r = requests.get(url=url_all_index).text
for ro in r.split(","):
	try:
		a = ro.lstrip('[')
		a = a.rstrip(']')
		a = a.rstrip('"')
		a = a.lstrip('"')
		print(a)
		da = requests.get(url=url_date_request+a).text
		daJson = json.loads(da)
		start_date = daJson['maxDate']
		today = daJson['today']
		if start_date >= today:
			continue
		code=a.lstrip("sz")
		code=code.lstrip("sh")
		print(code)
		index_zh_a_hist_df = ak.index_zh_a_hist(symbol=code, period="daily", start_date=start_date, end_date=today)
		# print(index_zh_a_hist_df)
		for index, row in index_zh_a_hist_df.iterrows():
			s = '{"date":"'+str(row[0])+'","open":'+str(row[1])+',"close":'+str(row[2])+',"high":'+str(row[3])+',"low":'+str(row[4])+',"volume":'+str(row[5])+',"totalAmount":'+str(row[6])+',"range":'+str(row[7])+',"zdRange":'+str(row[8])+',"zdAmount":'+str(row[9])+',"change":'+str(row[10])+',"code":"'+str(a)+'"}'
			d =  json.dumps(eval(s))
			requests.post(url, data=d, headers=headers)
	except BaseException:
		continue
