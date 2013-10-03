class Actor
  attr_accessor :name, :email, :birth_year, :country_of_origin, :biography

  def initialize(name, birth_year)
    @name = name
    @birth_year = birth_year
  end


end