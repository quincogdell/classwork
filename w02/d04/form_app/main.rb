require 'sinatra'
require 'sinatra/reloader' if development?

# make another route called called
# render an erb file called dad.
# display an unordered list from an array
# declared in main.rb
# that lists three things about him.
# the image url should be an instance variable
# display an image of the celebrity they look like

get '/' do
  erb :index
end

get '/mom' do
  @text = "Mom and me on a jetski"
  erb :mom
end

get '/dad' do
  @image_url = "http://upload.wikimedia.org/wikipedia/commons/1/1b/Abraham_Lincoln_November_1863.jpg"
  @info =["beard", "tall", "we have the same name"]
  erb :dad
end

get '/search' do
  @results = params[:query]
  erb :search
end

get '/search_deux' do
  @first_name = params[:first_name]
  @last_name = params[:last_name]
  erb :search_deux
end