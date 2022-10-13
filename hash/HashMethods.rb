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
food = {'drink' => 'cola', 'fruit' => 'orange'}
puts "#{food} - print all key-value pairs"

puts "#{food.fetch("drink")} -  get value by using fetch"
puts "#{food['drink']}  - get value by key name"
print "#{food.keys} - get keys"
puts
puts "#{food.key('orange')} - find key by value"

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

puts "------------ iterate hash by keys ------------"

days.keys.each { |key|
  if key == "Tuesday"
    puts "Today is tuesday, number of day = #{days.fetch("Tuesday")}"
  end
}
puts "------------ Iterate key/value ------------"
days.each do |key, value|
  puts "key = #{key}, value = #{value}"
end
