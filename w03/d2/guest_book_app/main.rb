require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'

get '/' do
  erb :new_guests
end

get '/guests' do
  db_conn = PG.connect(:dbname => 'guest_book_db', :host => 'localhost')
  sql = "SELECT * FROM guests"
  @guests = db_conn.exec(sql)
  #binding.pry
  erb :guests

end

post '/guests' do
  #binding.pry
  #name = params["name"]
  #msg = params["msg"]
  db_conn = PG.connect(:dbname => 'guest_book_db', :host => 'localhost')
  sql = "INSERT INTO guests (name, msg) VALUES ('#{params["name"]}', '#{params["msg"]}')"

  #sql = "INSERT INTO guests (name, msg) VALUES ('#{name}', '#{msg}')"

  db_conn.exec(sql)
  db_conn.close
  redirect to '/guests'
end


get '/guests/new' do

end
