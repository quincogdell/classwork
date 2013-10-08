require_relative 'library'
require_relative 'book'
require 'pry'

library = Library.new("Davis")
# shelf, Array

b1 = Book.new(10.43, "This book rocks!", "THE TITLE", "THE AUTHOR")
b2 = Book.new(43232, "This book rocks!", "afwe", "TawfeOR")

# Create Books
b1_id = library.add_book(b1)  #gives back array index
b2_id = library.add_book(b2)
p b1_id, b2_id
#binding.pry
# Read Booksb1
library.get_book(b2_id) #does not remove it from the library

# Read All Books
all = library.get_all_books # gives me back an array of all the books


# Destroy Books
library.remove_book(b1_id) # actually takes the book out of the library and throws it away
p library
