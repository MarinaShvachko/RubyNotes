options = {}
#key as a symbol, add key-value
options = {bread: 'tost'}
# get value by key
puts options[:bread] #tost
puts options.fetch(:bread) #if there is not key will be exception
puts options.fetch(:notexistentkey, 'default value') #if there is not key will be shown default value
#add key and value
options[:where] = 'code-basics'
#revrite value
options[:where] = 'code-basics2'
#get all values after we add some
puts options.to_s + "  - get all values after we add some"
print options.keys.to_s + " - get keys"
puts
print options.values.to_s + " - get values"
puts
puts options.key?(:where).to_s + " - check is the key exists"



puts
puts " -------------------- key as a string -------- "
#key as a string
food = {'drink' => 'cola'}
puts food
puts food.fetch("drink") # get value
