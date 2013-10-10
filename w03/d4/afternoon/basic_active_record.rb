require 'pg'

class Table
  # this connects to the database
  @@connection = PG.connect( dbname: "amazon_db", :host => 'localhost' )

  # inserts data into a table based on the object, creates column headers based on hash keys and inserts the corresponding value into each column
  def self.insert(data)
    @@connection.exec "insert into #{self.to_s.downcase} ( #{ transform_keys(data.keys) } ) values ( #{ transform_vals(data.values) } )"
  end

  #
  def self.find(id)
    @@connection.exec("select * from #{self.to_s.downcase} where id=#{id}").first
  end

  # May only be called within the context of the calling object
  private

  def self.transform_vals(values)
    values.map { |v| "\'#{v}\'" }.join(",")
  end

  def self.transform_keys(keys)
    keys.map(&:to_s).join(',')
  end
end

class Books < Table
end
