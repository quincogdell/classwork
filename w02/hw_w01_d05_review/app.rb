require 'pry'
require_relative 'building'
require_relative 'apartment'
require_relative 'tenant'

b1 = Building.new
a1 = Apartment.new

t1 = Tenant.new('Jonathan', 55, 'm')
t2 = Tenant.new('Alicia', 25, 'f')
t3 = Tenant.new('Phil', 35, 'm')

b1.apartments = [a1]
b1.name = 'Soho Grand'
a1.move_in(t1)

binding.pry