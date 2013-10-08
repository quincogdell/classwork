require_relative 'warehouse'
require_relative 'computer'
require 'pry'

w1 = Warehouse.new("BIG")


c1 = Computer.new(1182, "good computer", "Apple", "8GB")
c2 = Computer.new(1182, "bad computer", "Lenovo", "2GB")
c3 = Computer.new(1182, "really bad computer", "Dell", "1GB")
c4 = Computer.new(1182, "super computer", "Apple", "16GB")

# Create Books
c1_id = w1.add_computer(c1)  #gives back array index
c2_id = w1.add_computer(c2)
c3_id = w1.add_computer(c2)
c4_id = w1.add_computer(c2)
p c1_id, c2_id
#binding.pry
# Read Booksb1
w1.get_computer(c2_id) #does not remove it from the library

# Read All Books
all = w1.get_computers # gives me back an array of all the books


# Destroy Books
w1.remove_computer(c1_id) # actually takes the book out of the library and throws it away
p w1
