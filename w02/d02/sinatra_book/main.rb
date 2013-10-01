require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

require_relative 'user'


user1 = User.new("Quin Cogdell")
user1. description = "student"
user2.serious_picture = "http://i.imgur.com/OS5JZG2.jpg"
user2.funny_picture = "http://i.imgur.com/Du1nJfm.jpg"

user2 = User.new("Jonathan Leung")
user2. description = "teacher"
user2.serious_picture = "http://i.imgur.com/OS5JZG2.jpg"
user2.funny_picture = "http://i.imgur.com/Du1nJfm.jpg"


# get "/ganesh" do
#   "<img src="http://distilleryimage6.s3.amazonaws.com/34a391de293611e3933022000aa8032d_8.jpg">"
# end


