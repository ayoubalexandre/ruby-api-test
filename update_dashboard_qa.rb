require "uri"
require "json"
require "net/http"
require "date"

file_location = 'allure-report/history/history-trend.json'
report_data = JSON.parse(File.read(file_location))

url = URI("https://us-central1-dash-qa-api.cloudfunctions.net/api/dashboard/cZr4FUOfAps42YC4svgA")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Put.new(url)
request["Content-Type"] = "application/json"
request.body = JSON.dump({
    # 'formatDate': Time.now.strftime("%d/%m/%Y %H:%M"),
    'data': {
    'failed': report_data[0]['data']['failed'],
    'broken': report_data[0]['data']['broken'],
    'skipped': report_data[0]['data']['skipped'],
    'passed': report_data[0]['data']['passed'],
    'unknown': report_data[0]['data']['unknown'],
    'total': report_data[0]['data']['total'],
    },
})
response = https.request(request)
puts response.read_body