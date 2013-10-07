class Wizard
  attr_accessor :name, :spells

def initialize(name)
  @name = name
  @spells = []
end


def add_spell(new_spell)
  @spells << new_spell
end

def remove_spell
  @spells.pop
end

def to_s
    spells_string = ""
    @spells.each { |spell| spells_string << "#{spell}, "} # should remove trailing comma
    "#{@name} knows the following spells: #{spells_string}"
  end

end
