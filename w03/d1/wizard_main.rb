require_relative 'wizard'

w1 = Wizard.new("Quin")
#p w1

w1.add_spell('spell1')
w1.add_spell('spell2')
w1.add_spell('spell3')
w1.add_spell('spell4')
#p w1

w1.remove_spell
#p w1

p w1.to_s