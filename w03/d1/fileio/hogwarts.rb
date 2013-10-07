# welcome to hogwarts!
# allow user to enter a student's name and house
# save it as a csv
# save the student's name and house to a file

# csv

require 'pry'

def read_csv(file)
  file = File.open(file, 'r')
  students = []
  headers = file.first.chomp.split(",")
  headers_keys = []
  headers.each do |header|
    headers_keys << header.to_sym
  end

  file.each do |line|
    student_array = line.chomp.split(',')
    student_hash = {}
    student_hash[headers_keys[0]] = student_array[0]
    student_hash[headers_keys[1]] = student_array[1]
    students << student_hash
  end
  students
  #binding.pry
end


puts 'read or write'
input = gets.chomp

if input == 'read'
  p file = read_csv("hogwarts.csv")

else

puts "What's your name?"
name = gets.chomp

puts "What's your house?"
house = gets.chomp
file = File.open("hogwarts.csv", "a+")
file.puts"#{[name, house].join(',')}"
end

file.close


# def read_csv(file)
#   students = Array.new
#   line_counter = 0
#   file.each do |line|
#     line = line.split(",")
#     if line_counter == 0
#       key1 = line[0].to_sym
#       key2 = line[1].to_sym
#     else
#       student = Hash.new
#       student[key1]=line[0]
#       student[key2]=line[1]
#       students << student
#     end
#     line_counter += 1
#     students
#   end
#   students
# end





