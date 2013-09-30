# a user should be able to go to
# /calc/7/times/8
# and it should display 56
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

get '/calc/:x/:operator/:y' do
  operator = params[:operator]
  x = params[:x].to_f # "6"
  y = params[:y].to_f # "7"
  answer = case operator
            when "divided_by" then x / y
            when "multiply_by" then x * y
            when "add" then x + y
            when "minus" then x - y
            else
              "i dunno"
            end
  "the answer is #{answer}"
end

get '/name/:name' do
  "<h1> your name #{params[:name]}</h1><a href = '/store'>click here</a>"
end