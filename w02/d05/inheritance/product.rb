class Product

  attr_accessor :product_id, :cost, :description

  def initialize(product_id, cost, description)
    @product_id = product_id
    @cost = cost
    @description = description
  end

end