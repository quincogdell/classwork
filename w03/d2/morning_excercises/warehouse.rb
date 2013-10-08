class Warehouse

  attr_accessor :name

  def initialize (name)
    @name = name
    @shelf = []
  end

  def add_computer(computer)
    @shelf << computer
    @shelf.index(computer)
  end

  def get_computer(computer_id)
    @shelf[computer_id]
  end

  def get_computers
    @shelf.compact
  end

  def remove_computer(computer_id)
    computer = @shelf[computer_id]
    @shelf[computer_id] = nil
    computer
  end

end
