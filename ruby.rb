puts "How old are you?"
age = gets.chomp!

if age.to_i < 21
  puts "Go, home kid"
else
    puts "Party hard"
end