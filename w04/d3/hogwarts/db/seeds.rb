House.delete_all
Student.delete_all
Spell.delete_all
Course.delete_all

h1 = House.create(name: 'Gryffindor')
h2 = House.create(name: 'Slytherin')
h3 = House.create(name: 'HufflePuff')
h4 = House.create(name: 'Ravenclaw')

s1 = Student.create(name: 'Harry Potter')
s2 = Student.create(name: 'Hermione Granger')
s3 = Student.create(name: 'Draco Malfoy')
s4 = Student.create(name: 'Ron Wesely')

h1.students << s1 << s2
h2.students = [s3]



sp1 = Spell.create(:name => 'Accio')
sp2 = Spell.create(:name => 'Wingardium Leviosa')
sp3 = Spell.create(:name => 'Lumos')
sp4 = Spell.create(:name => 'Avada Kedavra')


s1.spells << sp1 << sp3
s2.spells = [sp1, sp2, sp3]
s3.spells.push(sp4)

c1 = Course.create(name: "Potions")
c2 = Course.create(name: "Pottery")

c1.students = [s1, s2, s3]
c2.students = [s2, s3, s4]

