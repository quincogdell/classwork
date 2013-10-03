require_relative 'person'
p1 = Person.new("Quin", 1985)

p2 = Person.new("Caroline", 1988)
p3 = Person.new("Betty", 1990)


p p1, p2, p3, p1.calculate_age

p1.name = "Quin C"
p1.birth_year = 1987
p1.email = 'quincogdell@gmail.com'

p p1.name, p1.birth_year, p1.email, p1.calculate_age

p p1, p2, p3