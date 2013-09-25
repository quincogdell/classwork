
NICKNAMES = {
  :friends => [
    'good looking',
    'super man',
    'marvelous',
    'ocean eyes'
  ],
 :frenemy => [
  'stinky',
  'cool hangs',
  'root beer nose',
  'two face',
  'fire breath'
]
}

def start()
  name = ask("What is you name?")
  friend_status = ask_bool("Are we friends?")
  puts friend_status.inspect
  nickname = generate_nickname(friend_status)
  give_nickname(name, nickname)
end

def generate_nickname(friend_status)
   if friend_status == 'y'
      nickname = NICKNAMES[:friends].sample
   else
      nickname = NICKNAMES[:frenemy].sample
  end
end

def give_nickname(name, nickname)
  user_name = name.split
  if user_name.length == 1
    puts "#{nickname}  #{user_name.first}"
  else
    puts "#{user_name.first} #{nickname} #{user_name.last}"
  end
end

#reusable method for asking users for inputs
def ask(question)
  puts(question)
  answer = gets.chomp!
  answer.downcase
end

#reusable method for asking users for yes or no inputs
def ask_bool(question)
  puts(question)
  puts 'y/n'
  answer = gets.chomp!
  answer.downcase
end


start()






