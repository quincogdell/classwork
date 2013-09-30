class Apartment
  attr_accessor :tenants, :building
  def initialize
    @tenants = []
  end

def occupied?
  @tenants.any?
end

def move_in(tenant)
  @tenants.push(tenant)
  tenant.apartment = self
end



end