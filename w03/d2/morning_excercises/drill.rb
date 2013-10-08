require 'pry'
users = [
  { :name => "Peter",
    :github => "peterylai",
    :favorite_numbers => [12, 42, 75]
  },
  { :name => "PJ",
    :github => "h4w5",
    :favorite_numbers => [8, 12, 24]
  },
  { :name => "Jeff",
    :github => "jkonowitch",
    :favorite_numbers => [12, 14, 85]
  }
]

peter = users[0]
pj = users[1]
jeff = users[2]

# p jeff[:github]
# pj[:favorite_numbers] <<  7
# puts pj

#quin = {:name => "Quin", :github => 'quincogdell', :favorite_numbers => [6, 22, 40]}
#users.push(quin)
#puts users

#users.delete(pj)
#puts 'user deleted'

# delete user keep in the same place
users[1] = nil
p users

#p peter[:favorite_numbers]

#binding.pry
#puts jeff[:favorite_numbers].min



#binding.pry
