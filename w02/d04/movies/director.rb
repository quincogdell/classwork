class Director
  attr_accessor :name, :email, :birth_year, :imdb_rating, :most_welll_known_movie

  def initialize(name, birth_year)
    @name = name
    @birth_year = birth_year
  end


end