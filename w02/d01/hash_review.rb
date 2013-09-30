# creates the hash from the instructions
qc = {
  "the meaning of life" => 42,
  :jonathan => 'awesome',
  9001 => :goku
}

qc['bill gates'] = 9999999999
qc[:paris] = 'pink'
qc[2000] = 'The year the world was supposed to end'
qc[:test]

qc_new = {}
qc.each do |key, value|
  qc_new[value] = key
end

p qc_new

# invert method does this for yous
qc_invert = qc.invert
p qc_invert


#####
# in class way using while loop
#####
new_keys = qc.keys
new_values = qc.values
new_hash = Hash.new
count = 0
while count < new_values.length
  value = new_values[count]
  key = new_keys[count]
  new_hash[value] = key
  count +=1
end
p new_hash
