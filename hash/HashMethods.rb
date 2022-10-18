options = {}
#key as a symbol, add key-value
options = {bread: 'tost'}

# get value by key
puts options[:bread] #tost
puts options.fetch(:bread) # if there is not key will be exception
puts options.fetch(:notexistentkey, 'default value') #if there is not key will be shown default value

# add key and value
options[:where] = 'code-basics'
#revrite value
options[:where] = 'code-basics2'
#get all values after we add some
puts "Get all values after we add some #{options}"
print  "Get keys #{options.keys}"
puts
print "Get values #{options.values}"
puts
puts  "Check is the key exists: #{options.key?(:where)}"

puts
puts " -------------------- key as a string -------------------- "
food = {'drink' => 'cola', 'fruit' => 'orange'}
puts "#{food} - print all key-value pairs"

puts "#{food.fetch("drink")} -  get value by using fetch, if there is not key will be exception"
puts "#{food['drink']}  - get value by key"
puts "#{food.key('orange')} - get key by value"
print "#{food.keys} - get keys"
puts


#Example where I call not existent key, the program is not stopped
puts food.key('cola')
puts food.key('cola2')
puts food.key('orange')

#another example how to create hash
days = Hash.new
days["Monday"] = 1
days["Tuesday"] = 2
print "#{days} - this is days"
puts days.key('Tuesday')

# transform_values()  - change all values
colors = {
  first: 'white',
  second: 'red',
  third: 'yellow'
}
colors_transformed_values = colors.transform_values {|value| value.upcase}
puts colors_transformed_values

colors_transformed_keys = colors.transform_keys {|value| value.capitalize}
puts colors_transformed_keys

puts "Get from hash key-value by specifying only value #{colors.slice(:second)}"

# get from hash using filter
puts
print 'Select from hash   '
puts colors.select {|key, value| value == 'red'}

