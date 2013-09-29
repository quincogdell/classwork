class Cat
  def initialize(name)
    @name = name
  end

  def meow
    "meowww"
  end

  def pur
    "prrrrrrrrr"
  end

end

class Person
  def initialize(given_name, social, gender)
    @name = given_name
    @age = (1..100).to_a.sample
    @social = social
    @gender = gender
  end
  #this method sets the instance variable
  def change_name(new_name)
    @name = new_name
  end
#this method gets the instance variable
  def say_name
    @name
  end
end








c1 = Cat.new("Pockets")
c2 = Cat.new("Tiny")
c3 = Cat.new("Mr Susan")
pride = [c1, c2, c3]



