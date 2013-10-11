require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'
require 'active_record'
require_relative 'active_record'

helpers do
  def db_connect
    ActiveRecord::Base.establish_connection(
      :adapter => "postgresql",
      :host => "localhost",
      :username => "quincogdell",
      :password => "",
      :database => "books_db"
    )
  end

   def db_disconnect
    ActiveRecord::Base.connection.close
    end
  end

class Books < ActiveRecord::Base
end

get '/' do
  redirect to '/books'
end


get '/books' do
  db_connect
  @results = Books.all
  db_disconnect
  erb :books
end



