require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

get '/flags' do

 erb :flags
end

get '/dogs' do
  erb :dogs
end