require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'pry'


get '/' do
  # response = HTTParty.get("http://graph.facebook.com/quincogdell")
  # first_name = response['first_name']
  # first_name
  erb :index
end

get '/user' do
  username = params[:username_input]
  puts username
  url = "http://graph.facebook.com/#{username}"
  #puts url
  @user_data = HTTParty.get(url)
  erb :user
end

get '/stock' do
  stock_symbol = params[:stock_symbol]
  puts stock_symbol
  url = "http://dev.markitondemand.com/Api/Quote/json?symbol=#{stock_symbol}"
  response = HTTParty.get(url)
  data_hash = response["Data"]
  @last_price = data_hash["LastPrice"]
  @name = data_hash["Name"]
  erb :stock
end


# get '/stock' do
#   url = "http://dev.markitondemand.com/Api/Quote/json?symbol=goog"
#   response = HTTParty.get(url)
#   p response
#   data_hash = response["Data"]
#   last_price = data_hash["LastPrice"]
#   name = data_hash["Name"]
#   "#{name} is currently at the last price #{last_price}"
# end

# get '/stock/:stock_symbol' do
#   stock_symbol = params[:stock_symbol]
#   url = "http://dev.markitondemand.com/Api/Quote/json?symbol=#{stock_symbol}"
#   response = HTTParty.get(url)
#   data_hash = response["Data"]
#   @last_price = data_hash["LastPrice"]
#   @name = data_hash["Name"]
#   erb :stock





