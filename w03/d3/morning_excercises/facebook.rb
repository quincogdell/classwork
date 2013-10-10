require 'httparty'
require 'json'
require 'pg'
require 'pry'

url ='https://raw.github.com/ga-students/WDI_NYC_Hash/master/week_03/d03/json_files/fb_small.json?login=jonleung&token=00d9d6609b67c15327252f90dd5971dd'


request = HTTParty.get(url)
parsed_results = JSON.parse(request)

friends_array = parsed_results["data"]

male_friends = 0
female_friends = 0
first_friend_to_register = {}
last_friend_to_register = {}
friends_with_websites = 0
friends_new_york = 0
female_friends_single = 0
female_friends_single_nyc = 0

  # first_friend_to_register_id = friend
  # last_friend_to_register_id = friend

friends_array.each do |friend|
  if friend["gender"] == "male"
    male_friends += 1
  else
    female_friends += 1
  end
  if friend.has_key?('location') && friend["location"]["name"] == "New York, New York"
    friends_new_york += 1
  end

  if friend.has_key?('website')
    friends_with_websites += 1
  end



end

p male_friends
p female_friends
p friends_new_york
p friends_with_websites
#binding.pry
