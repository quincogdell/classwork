require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

compliments = [
  "Your instructors love you",
  "That's a really nice e-cigarette",
  "Is it Ruby Tuesday yet?",
  "You are awesome.upcase",
  "Cardigan mumblecore Etsy, YOLO Marfa kogi art party",
  "(1..1_000_000).to_a.include?(you) == true"
]
colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]


get '/' do
  erb :index
end

get '/:name' do
  @color = colors.sample
  @compliment = compliments.sample
  @name = params[:name]
  erb :compliment
end
