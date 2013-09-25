#method for asking users for inputs
def ask(question)
  puts(question)
  answer = gets.chomp!
  answer.downcase
end

#method for asking users for yes or no inputs
def ask_bool(question)
  puts(question)
  puts 'y/n'
  answer = gets.chomp!
  answer.downcase
end