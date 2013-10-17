require 'pry'
require 'httparty'
url = "http://guarded-sands-6955.herokuapp.com/morning/instructions"
options = {:body => {:say => 'please'}}
#response = HTTParty.get(url)
response = HTTParty.post(url, options)
puts response
