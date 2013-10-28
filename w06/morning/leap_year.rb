class Year

attr_accessor :year

def initialize(year_input)
  @year = year_input
end

def leap?
  @year % 4 == 0
end

end
