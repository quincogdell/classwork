# encoding: utf-8
require 'sinatra'
require 'sinatra/reloader' if development?
# debugging gems
require 'pry'
require 'rainbow'

get '/' do
  puts params.to_s.background(:green) # prints out to terminal
  erb :index
end

get '/search' do
  erb :search
end

get '/results' do
  @results = params[:query]
  erb :results
end

get '/apt_search' do
  erb :apt_search
end

get '/apt_results' do
  @results = params
  erb :results
end

get '/login' do
  erb :login
end

post '/login' do
  params.to_s
#  erb :results
end