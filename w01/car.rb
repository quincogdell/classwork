require 'pry'

class Car
  def initialize(price, make, color, model)
    puts 'woah a car is being built'
    @price = price
    @make = make
    @color = color
    @model = model
    @passengers = []
  end

  def set_color(color)
    @color = color
  end

  def get_color
    "this car is #{@color}"
  end

  def add(passenger)
    puts "Hop in #{passenger}"
    @passengers << passenger
  end

  def kick_out
    friend = @passengers.shift
    puts "See you Monday #{friend}"
  end

  def to_s
    "This is a $#{@price} #{@make} #{@color} #{@model} with #{@passengers.length} passenger(s)"
  end



end

c1 = Car.new(499, 'vw', 'red', 'surf van')
c1.set_color("biege")
c1.add("Billy")
c1.add("Sue Ellen")
c1.add("Frankie")
c1.kick_out

c1.inspect