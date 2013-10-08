require_relative 'book'

b1 = Book.new(10.82, "good book", "THE TITLE", "THE AUTHOR")
b1.title = "Good Good Book"
b1.author = 'jk'
p b1
p b1.to_hash

# b1.price = 9001.00
# p b1

# b1.description = "bad book"
# p b1

# p b1.price


# p b1.description

# p b1.to_hash
