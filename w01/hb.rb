

def ask(string)
  puts string
  gets.chomp!
end

def signup()
  username = ask("What is the username you want to be able to signin with?")
  password = ask("What do you want your password to be?")
  full_name = ask("What is your full name?")
  fav_hobbies = ask("What are your favorite hobbies?")
  gender = ask("What is your gender?")

  user = {
    :username => username,
    :password => password,
    :full_name => full_name,
    :fav_hobbies => fav_hobbies,
    :gender => gender
  }
end

def login()
  username  = ask("What is your username?")
  password = ask("What is your password?")

  puts "LOGIN"
end

def view()
  puts "VIEW"
end

def post()
  puts "POST"
end

def exit()
  puts "EXITING"
end


INSTRUCTIONS = "
If you want to signup, type:
> signup

If you want to login, type:
> login

If you want to view sarah123's profile, write:
> view sarah123

If you want to post to Sarah's Wall
> post sarah123

If you want to quit
> quit
"

=begin
First, tell the user about the various functions they can do
Then based on what they say they are going to do,
Call the appropriate method to that.
  - First figure out what command they are trying to do
=end

input = ask(INSTRUCTIONS)
parameters = input.split(" ")
operator = parameters.first

if operator == "signup"
  puts signup()
elsif operator == "login"
  login()
elsif operator == "view"
  view()
elsif operator == "post"
  post()
elsif operator == "quit"
  exit()
elseif operator == "signout"
  signout()
end


