require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'

get '/books' do
  db_conn = PG.connect(:dbname => 'amazon_db', :host => 'localhost')
  sql = "SELECT * FROM books"
  books = db_conn.exec(sql)
  binding.pry
  books.entries.to_s
end

post '/books' do
  binding.pry
  # have some params coming in froma form
  # i need a form
  # parse those params
  # connect to my database
  # create a sql query with values from params
  # execute my sql query
  # redirect bak to /books
end

get '/books/new' do
# render out a form to add a book
end
