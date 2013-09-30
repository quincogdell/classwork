require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  erb :index
end

get '/about' do

  erb :about

  #{}"<a href = '/'>Home</a>"
end

get '/current_time' do
  @current_time = Time.now
  erb :time


  # str_1 = "The current date and time is #{Time.now.asctime} <br>"
  # str_2 = "<a href = '/'>Home</a>"
  #  "#{str_1}#{str_2}"
end

