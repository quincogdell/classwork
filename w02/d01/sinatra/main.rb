# loads up sinatra
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

# routes
get "/" do
  "hello and welcome"
end

get "/puppies" do
  params # a magical hash
  # using a query string
  name = params[:name]
  age = params[:age]
  cute = params[:cute]
  if cute == 'true'
    relationship_status = 'I love him'
  else
    relationship_status = 'Whatever - Alex'
  end
end

get "/kittens" do
  "are adorable and the best"
end

get "/search" do
  binding.pry
end


