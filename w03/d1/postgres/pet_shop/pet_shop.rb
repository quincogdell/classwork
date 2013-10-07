# load up the postrgres gem
require 'pg'

# establish a connection with our db
db_connection = PG.connect(:dbname => 'pet_shop_db', :host => 'localhost')


sql = "SELECT * FROM puppies"

response = db_connection.exec(sql)

puts response.entries
# print out "Tyler is a cute 5 year old puppy"
puppies = response.entries
puppies.each do |pup|
  if pup[is_cute] == 't'
    puts "#{pup['name']} is a #{pup['is_cute']} #{pup['age'] } year old puppy"
  else
    puts "#{pup['name']} is a #{pup['is_cute']} #{pup['age'] } year old puppy"
  end


end


# always always always remember to close all connections
db_connection.close