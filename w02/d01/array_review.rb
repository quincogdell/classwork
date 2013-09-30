names = ['Quin', 'Caroline', 'Anders']
names << 'Michael' << 'Jared'

names.push('Alex')
names.push('Billy')

names.map do |name|
  name << "'s"
end

#this was my experiment with the .each_with_index array method
names_hash = {}
names.each_with_index.each do |name, index|
  names_hash[index] = name
end




p names
p names_hash
p names_hash.keys[0].class

