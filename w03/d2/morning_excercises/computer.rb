require_relative 'product'

class Computer < Product
  attr_accessor :ram
  attr_reader :brand

  def initialize(price, description, brand, ram)
    super(price, description)
    @brand = brand
    @ram = ram
  end

  def to_hash
    h = super
    h.merge( { :brand => @brand, :ram => @ram } )
  end

end
