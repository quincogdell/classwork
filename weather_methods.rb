#Methods for weather.rb
def start(temp)
  if temp != "0"
    check(temp)
  else
    weather_advice(temp.to_i)
  end
end

def check(temp)
  if temp.to_i == 0
      puts "Please input the temperature as an integer"
      user_temp_2 = gets.chomp!
      start(user_temp_2)
  else
      weather_advice(temp.to_i)
  end
end

def weather_advice(temp)
  if temp< 60
      puts "Wear a jacket to  have fun."
  else
      puts "Go ahead and party"
  end
end



