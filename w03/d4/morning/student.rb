# jonathan messed with this to try and show me where we were going and
# how to tie this to where we are going with Active Record
# i was unable to finish it :(

require_relative "students_db"
class Student

  attr_accessor :name, :gender
  attr_reader :is_muggle

  def initialize(name, gender, is_muggle)
    @id = nil
    @name = name
    @gender = gender
    @is_muggle = is_muggle
  end

  def save
    insert_student(self)
  end

  def insert_student(s)
    sql = "INSERT INTO students (name, gender, is_muggle) VALUES ('#{s.name}', '#{s.gender}', #{s.is_muggle}) RETURNING id;"
    response = db_exec(sql)
    id response.entries.first["id"]
  end

  def all
    sql = "SELECT * FROM students;"
    db_exec(sql)
  end

  def find_by_id
    sql = "SELECT * FROM students WHERE id = '#{@id}';"
    db_exec(sql)
  end

  def find_by_gender
    sql = "SELECT * FROM students WHERE gender = '#{@gender}';"
    db_exec(sql)
  end

  def find_by_name
    sql = "SELECT * FROM students WHERE gender = '#{@name}';"
    db_exec(sql)
  end

end
