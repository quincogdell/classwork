require_relative 'slot_machine'
require_relative 'roller'

s1 = SlotMachine.new(3)
s1.name = 'slot1'
p s1

s1.pull

s1.stop_roller(1)
p s1.selections
s1.stop_roller(2)
p s1.selections
s1.stop_roller(3)
p s1.selections

