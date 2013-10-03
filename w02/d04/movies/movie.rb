class Movie
  attr_accessor :name, :year, :rating

  def initialize(name, year)
    @name = name
    @year = year
  end


def calculate_age
  current_year = Time.now.year
  current_year - @year
end

end





 # def name=(input_name)
  #   @name = input_name
  # end

  # def name
  #   @name
  # end

  # def year=(input_year)
  #   @year = input_year
  # end

  # def year
  #   @year
  # end

  # def rating=(input_rating)
  #   @rating = input_rating
  # end

  # def rating
  #   @rating
  # end