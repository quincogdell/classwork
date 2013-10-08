require 'pg'
require 'pry'

# db_conn = PG.connect(
#   :dbname => 'amazon_db',
#   :host => 'localhost'
#   )

# sql = "SELECT * FROM books"

# response = db_conn.exec(sql)

# response.entries.each do |book|
#   puts book['title']
# end

# sql2 = "SELECT title FROM books"
# response2 = db_conn.exec(sql2)
# response2.entries.each { |book| puts book['title']}

# db_conn.close


# db_conn = PG.connect(
#   :dbname => 'amazon_db',
#   :host => 'localhost'
#   )

#   sql = "SELECT * FROM books"
#   response = db_conn.exec(sql)

#   response.entries.each do |book|
#     sql_update = "UPDATE books SET title = '#{book['title'].upcase}' WHERE id = #{book['id']}"
#     db_conn.exec(sql_update)
#   end

# # from class
# # response.entries.each do |book|
# #   title = book['title'].split(' ').map { |word| word.capitalize }.join(' ')
# #   sql = "UPDATE books SET title = '#{title}' WHERE id = #{book['id']}"
# #   db_conn.exec(sql)
# # end

# db_conn.close


db_conn = PG.connect(
  :dbname => 'amazon_db',
  :host => 'localhost'
  )

  sql_select = "SELECT id, title FROM books"
  response = db_conn.exec(sql_select)
  binding.pry
  puts "Enter and ID from our book selection:"
  response.entries.each do |book|
    puts "ID: #{book['id']} Title #{book['title']}"
  end
  puts "Select a book by entering the ID number"
  input = gets.chomp!

  sql_delete = "DELETE FROM books WHERE ID = #{input}"
  db_conn.exec(sql_delete)


db_conn.close














