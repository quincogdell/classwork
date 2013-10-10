require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "quincogdell",
  :password => "",
  :database => "people_db"
)

class User < ActiveRecord::Base
  def say
    "hhhiii"
  end
end

class Unicorn < ActiveRecord::Base
  def say
    "neighhh"
  end
end

binding.pry
