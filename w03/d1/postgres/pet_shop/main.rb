require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

get '/' do
  db_connection = PG.connect(
    :dbname => 'pet_shop_db',
    :host => 'localhost')
  sql = "SELECT * FROM puppies"
  response = db_connection.exec(sql)
  db_connection.close
  response.entries.to_s
end

get '/okc' do
  db_connection = PG.connect(
    :dbname => 'ok_cupid_db',
    :host => 'localhost')
  sql = "SELECT * FROM users"
  response = db_connection.exec(sql)
  db_connection.close
  response.entries.to_s
end

get '/new' do
  erb :form
end

post '/new' do
#binding.pry

end