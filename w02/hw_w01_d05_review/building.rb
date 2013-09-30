class Building
  attr_accessor :name, :apartments

  def initialize

    @apartments = []
  end

  def count_people
  total_renters = 0
  @apartments.each do |apartment|
    total_renters += apartment.tenants.count
    #binding.pry
  end
  total_renters
  end

  def count_apartments_available
    total_available = 0
    @apartments.each do |apt|
        total_available +=1 if !apt.occupied?         # using ! at the start is a bang
      end
    total_available
    #@apartments.map {|apt| apt.tenants.size }.reduce(:+) #this also returns the total available
    #@apartments.map {|apt| apt.tenants.size }.reduce(:+)  #this also returns the total available
  end

  def inquiry_string
    "There are #{count_apartments_available} apartments available"
  end

  def to_s
    "#{name} is a cozy charming buidling. #{inquiry_string}"
  end

end