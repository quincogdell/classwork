require 'pry'
require_relative 'person'
require_relative 'director'
require_relative 'hacker'

p1 = Person.new("Quin", "quincogdell@gmail.com")

# p p1.name
# p p1.email

# p1.name = 'Quin2'
# p1.email = 'quincogdell@yahoo.com'

# puts p1.name
# puts p1.email

h1 = Hacker.new("Quin", "quincogdell@gmail.com", "ruby")
h1.github_handle = "quincogdell"
h1.favorite_language = "ruby"
p h1

p1.work
puts 'end p1'
h1.work

# d1 = Director.new("Terintino", "t@badass.com")
# d1.rating = 5
# d1.known_movie = "Pulp Fiction"
# p d1
