require 'pg'

class StudentsDb



  def self.db_exec(sql)
    connection = PG.connect(:dbname => 'hp_db', :host => 'localhost')
    response = connection.exec(sql)
    connection.close
    response.entries
  end

end
