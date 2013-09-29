class Car
  attr_accessor :color, :driver, :passengers
  def initialize
    @passengers = []
  end
  def beep
    "beep beep"
  end
end
