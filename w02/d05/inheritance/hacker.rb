require_relative 'person'

class Hacker < Person
  attr_accessor :github_handle, :favorite_language

  def initialize(name, email, favorite_language)
    super(name, email)
    @favorite_language = favorite_language
  end

  def work
    super
    puts 'i am hacking away on my project'
  end

end