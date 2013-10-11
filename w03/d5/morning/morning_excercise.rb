require 'httparty'
require 'json'
require 'pg'
require 'pry'

url ='https://raw.github.com/ga-students/WDI_NYC_Hash/master/week_03/d05/fb_data/location.json?login=jonleung&token=14fceccc5727f3bad8576a47c96f15f5'

request = HTTParty.get(url)
parsed_results = JSON.parse(request)

