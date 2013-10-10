require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'

# GET
# display an index page that says 'Wishlists!'
# then we want to list any wishlists

helpers do
  def db_exec(sql)
    conn = PG.connect(:dbname =>'wishlists_db', :host => 'localhost')
    result = conn.exec(sql)
    conn.close
    result
  end
end


get '/' do
  redirect to '/wishlists'
end

get '/wishlists' do
  # sql query to get all wishlists
  # display them all
  sql = "SELECT * FROM wishlists"
  @wishlists = db_exec(sql)
  erb :index
end

# GET '/wishlists/1'
# show all the items for that wishlist
get '/wishlists/:id' do
  id = params[:id]
  sql = "SELECT * FROM wishlists WHERE ID = #{id}"
  @wishlists = db_exec(sql)
  erb :index
end

# GET '/wishlists/1/items/2'
  # sql query for a particular item
get '/wishlists/:id/items/:item_id' do
  id = params[:id]
  item_id = params[:item_id]
  #db_conn = PG.connect(:dbname => 'wishlists_db', :host => 'localhost')
  sql = "SELECT * FROM items WHERE wishlist_id = #{id} AND ID = #{item_id}"
  @wishlists = db_conn.exec(sql)
  #db_conn.close
  erb :index
end


# add a form to add an item to a wishlist
# add a form to add a wishlist
