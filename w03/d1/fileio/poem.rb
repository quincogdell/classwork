# puts "Let's write a poem one line at a time"
# #open up file
# file = File.open("poem.txt", "a+") #read and write starting at bottom
# # get input from user
# puts "give me a line, shakespear"
# poem_line = gets.chomp
# #writing the line to the file.
# file.puts(poem_line)
# #when we're done we need to close our file
# file.close



file = File.open("poem.txt", "r")
file.each do |line|
  puts line
end
file.close