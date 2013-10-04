# encoding: utf-8
require 'sinatra'
require 'sinatra/reloader' if development?
# debugging
require 'pry'
require 'rainbow'

kittens = ["tiny", "franz" ]
puppies = ["champ"]

get '/' do
  puts params.to_s.background(:red) # appears in terminal
  erb :index
end

get '/kittens' do
  @kittens = kittens
  erb :kittens
end

get '/kittens/:id' do
  index = params[:id].to_i
  kitten = kittens[index]
  "you picked #{kitten}"
end

post '/kittens' do
  kitten_name = params[:kitten_name]
  kittens.push(kitten_name)
  redirect to("/kittens")
end


get '/puppies' do
  @puppies = puppies
  erb :puppies
end

post '/puppies' do
  puppy_name = params[:puppy_name]
  puppies.push(puppy_name)
  redirect to "/puppies"
end

