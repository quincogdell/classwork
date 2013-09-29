class Animal
  def initialize
    # defaults
    @belly = []
  end

  def eat(food)
    @belly << food
  end

  def full?
    !@belly.empty?
  end

  # setter
  # def set_name=(name)
  def name=(name)
    # creates an instance variable
    @name = name
  end

  # getter
  def name
  # def name
    @name
  end
end

a1 = Animal.new