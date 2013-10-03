require 'date'  # gives access to the DateTime class

class Person
  attr_accessor :name, :birth_year, :email

  def initialize(name, birth_year)
    @name = name
    @birth_year = birth_year
  end


  def calculate_age
    current_year = Time.now.year
    current_year - @birth_year
  end


end