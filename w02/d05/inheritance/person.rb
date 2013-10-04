class Person

  def initialize(name, email)
    @name = name
    @email = email
  end

def name=(input_name)
  @name = input_name
end

def name
  @name
end

def email=(input_email)
  @email = input_email
end

def email
  @email
end

def work
  puts "I'm doing boring work"
end

end
