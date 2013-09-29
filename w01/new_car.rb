class Car
  # creates set and get methods
  # we pass in symbols and it creates instance variables
  attr_accessor :color, :make, :price, :model

  def initialize
    @running = false
  end

#attr_accessor does all of this
  # def color=(color)
  #   @color = color
  # end

  # def color
  #   @color
  # end

  def honk
    "beep beep"
  end

  def start_ignition
    @running = true
  end

  def play_radio
   if @running
      "jamz are the jamz"
    else
      'you have to start the car before you can play the radio silly'
    end
  end

end
