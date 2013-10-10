require 'pry'
require 'pg'

classmates_strings = ["brad,sushi,bpuder0120","david,burgers,dtothefp","tom,wings,tommyb67"]
# new_classmates_string = []
# classmates_strings.each do |string|
#   new_classmates_string << string.gsub(",", "|")
# end
# p new_classmates_string

# classmates_strings.each do |string|
#   person_info_array = string.split(",")
#   name = person_info_array[0].capitalize
#   food = person_info_array[1]
#   msg = "#{name}'s favorite food is #{food}"
#   puts msg
# end

# ul_b = '<ul>'
# ul_e = '</ul>'
# li_b = '<li>'
# li_e = '</li>'
# classmates_strings.each do |string|
#   person_info_array = string.split(",")
#   name = person_info_array[0]
#   food = person_info_array[1]
#   username = person_info_array[2]
#   line1 = li_b + name + li_e
#   line2 = li_b + food + li_e
#   line3 = li_b + username + li_e
#   puts ul_b
#   puts line1
#   puts line2
#   puts line3
#   puts ul_e
# end


classmates_hashes = [
  { :name => "McKenneth",
    :food => "Duck confit",
    :github => "DrRobotmck"
  },
  { :name => "Aby",
    :food => "Sushi",
    :github => "abzilla"
  },
  { :name => "Marco",
    :food => "Ceviche",
    :github => "mpvazquez"
  },
]

# classmates_hashes.each do |classmate|
#   #binding.pry
#   name = classmate[:name]
#   food = classmate[:food]
#   puts "#{name}'s favorite food is #{food}."
# end


db_conn = PG.connect(:dbname => 'kick_hash_db', :host => 'localhost')
# classmates_hashes.each do |classmate|
#   name = classmate[:name]
#   food = classmate[:food]
#   github = classmate[:github]
#   sql = "INSERT INTO users (name, food, github) VALUES ('#{name}', '#{food}', '#{github}')"
#   db_conn.exec(sql)
# end

sql_github = "SELECT github FROM users"
p db_conn.exec(sql_github).entries

sql_id = "SELECT * FROM users WHERE id = 1"
p db_conn.exec(sql_id).entries




db_conn.close




