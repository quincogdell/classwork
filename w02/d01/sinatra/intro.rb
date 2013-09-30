require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

NICKNAMES = ['smelly', 'tiny', 'good lookin', 'bear', 'DJ', 'mighty']

get '/nickname/:name/:last' do
  "Your nickname is #{params[:name]} '#{NICKNAMES.sample}' #{params[:last]}"
end

get '/' do
  'welcome to our homepage'
end

# dynamic route
# anything that's a symbol in the string becomes key value pairs
get '/say_hi/:name/:last' do
  name = params[:name]
  last = params[:last]
  "hi there #{name} #{last}"
  add()
end

# i can do this with a query string
get '/search' do
  query = params[:query]
  "you searched for #{query}"
end

