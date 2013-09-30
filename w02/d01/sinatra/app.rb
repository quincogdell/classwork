require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

get '/' do
  #moving string to erb file
  erb :index
  # str_1 = "<h1>hello my name is quin</h1><br>"
  # str_2= "<a href = '/about'>about me</a><br>"
  # str_3 = "<a href = '/current_time'>current time</a>"
  # "#{str_1}#{str_2}#{str_3}"
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

