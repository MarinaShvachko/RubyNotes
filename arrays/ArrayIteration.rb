#numbers = [2,3,4,5]
numbers = (1..4).to_a

puts ' ----------- each example -------------- '
numbers.each { |item| print "#{item + 1}, " }
puts "\n\n"

puts ' ----------- each do example -------------- '
# Usually used id block contains > 1 line of code
result = 0
numbers.each do |item|
  result+=item
end
puts "sum of elements = #{result}\n\n"

puts ' ----------- for in example -------------- '
cities = %w[Ney-York Chicago California Devis]
for city in cities
  print "#{city}, "
end
puts "\n\n"

puts ' ----------- each example & delete space -------------- '
record_arr = ['  aaa', 'dddd ', '  ddd   ']
record_arr.each(&:strip!)
print record_arr
puts "\n\n"

puts ' ----------- map example -------------- '
map_array = %w[monday tuesday wednesday thursday friday saturday sunday]
new_map_array = map_array.map(&:capitalize)
print "#{new_map_array}\n\n"

puts ' ----------- select example -------------- '
select_array = [6, 44, 3, 78, -4, 22, -7]
print "before .select(): #{select_array}\n"
selected_elements = select_array.select { |num| num > 0 }
print "after .select() only positive numbers: #{selected_elements}\n\n"
