class Product
  attr_accessor :price, :description

  def initialize(price, description)
    @price = price
    @description = description
  end


  def to_hash
    {
      :price => @price,
      :description => @description
    }

  end


end
