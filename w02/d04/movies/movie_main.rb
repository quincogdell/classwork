require_relative 'movie'
require_relative 'person'
require_relative 'director'
require_relative 'actor'
require_relative 'oscar'



m1 = Movie.new('Titanic', 1997)
# m1.name = 'Titanic'
# m1.year = 1997
m1.rating = 4.5


m2 = Movie.new('The Hangover', 2009)
# m2.name = 'The Hangover'
# m2.year = 2009
m2.rating = 3


p m1.name
p m1.year
p m1.rating
p m1.calculate_age
p m1


p m2.name
p m2.year
p m2.rating
p m2.calculate_age
p m2

p1 = Person.new("Quin", 1985)
p2 = Person.new("Caroline", 1988)
p3 = Person.new("Betty", 1990)


p p1, p2, p3, p1.calculate_age

p1.name = "Quin C"
p1.birth_year = 1987
p1.email = 'quincogdell@gmail.com'

p p1.name, p1.birth_year, p1.email, p1.calculate_age
p p1, p2, p3

o1 = Oscar.new("Best Picture", 2013)
o2 = Oscar.new("Best Comedy", 2013)
o3 = Oscar.new("Best Action", 2013)
o4 = Oscar.new("Best Actor", 2013)

a1 = Actor.new("Leo", 1980)
a1.email = "lea@neverwonanoscar.com"

a2 = Actor.new("Julia Roberts", 1975)
a2.country_of_origin = "USA"

d1 = Director.new("Scorsce", 1953)
d2 = Director.new("Tarentino", 1960)

p a1, a2, d1, d2, o1, o2, o3, o4



