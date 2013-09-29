# loads up gem
require 'pry'

# loads up files in the same directory
require_relative 'car'
require_relative 'person'

c1 = Car.new
p1 = Person.new
p2 = Person.new
p3 = Person.new

c1.driver = p1
c1.passengers = [p1, p2, p3]

puts c1