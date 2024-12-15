empty_array = [nil, nil, 0]
students = %w[Anna Zippo Filipo Karl]
puts
print "#{students} - print without moving to a new line\n"
puts "#{students.any?} - returns true if the array contains at least 1 element != nil\n"
print "#{students.sort} - sort elements of the array\n\n"

puts ' ----------------- Add and remove elements to/from the array -----------------'
numbers = [1,2,3]
# Add
print "#{numbers << 4} - add 4 to the end by using <<\n"
print"#{numbers.push(7)} - add 7 to the end by using .push()\n"
print "#{numbers.unshift 0} - add 0 to the start\n"
# Remove, can provide the number of elements to remove
print"#{numbers.pop} - remove 7 (last element) from the end and return it's value, the array is now = #{numbers}\n"
print"#{numbers.shift} - remove 0 (1st element) from the start and return it's value, the array is now = #{numbers}\n"
# Delete by index
print "before .delete_at(): #{numbers}, after .delete_at() #{numbers.delete_at(0)}: #{numbers}\n"
numbers.unshift(0, 1)
# Delete by value
animals = ["birds", "cats", "dogs", "birds", "cats"]
print "before .delete(): #{animals},"
animals.delete('birds')
print " after .delete() birds: #{animals}\n\n"

puts '  ----------------- get array\'s element -----------------'
puts "#{numbers.first} - get first element"
puts "#{numbers.last} - get last element"
puts "#{numbers[-1]} - get the last element by negative index"

puts ' ----------------- create a new array using .first() and .last() ----------------- '
array1 = %w[Monday Tuesday Wednesday Thursday Friday]
print "#{array1} - this is the full array\n"
# Doesn't change an initial array
print "#{array1.first(2)} - I tool 2 first elements\n"
print "#{array1.last(1)} - I took 1 last element\n\n"

puts '  -----------------  get length  -----------------'
puts "#{numbers.length}"
puts '  -----------------  check if include  -----------------'
puts numbers.include? 2
puts '  -----------------  get sum of all elements  -----------------'
puts "#{numbers.sum}\n\n"

puts '  -----------------  comparison  -----------------'
items = [1, 2]
puts "#{items == [1,2]} - create array items = [1, 2] and compare it array and == [1,2]"
# compare by elements but send by link
arr1 = [1, 2, 3]
arr2 = arr1
puts "#{arr1 == arr2} - create arr1, create arr2=arr1, check if arr1 == arr2"
arr1.unshift(0)
puts "#{arr1 == arr2} - add 0 to the start of arr1 and check if arr1 == arr2"
# print arr1
# print arr2
a = [1, 2, 3]
b = [3, 4, 5]
print a
puts
print b
puts
print "#{a - b} - compare two arrays and get unique elements for 1st one\n\n"

puts ' ---------------- Collect (the same as .map)  ------------------- '
coffee = %w[cold warm hot]
modified_coffee = coffee.collect { |element| element.capitalize }
print coffee
puts
print "#{modified_coffee}\n\n"

puts ' ---------------- return random elements from an array ---------------- '
my_arr = [4, 8, nil, 66, 1]
print "return one random element(or null elements?): #{my_arr.sample}\n"
print "return three random elements: #{my_arr.sample(3)}\n\n"

puts ' ---------------- join elements of the array ---------------- '
puts "#{numbers.join} - join elements and return as a String"
puts "#{numbers.join('-')} - join elements with adding symbols and return as a String\n\n"

puts ' ---------------- find unique elements in the array ---------------- '
find_unique = [1, 2, 1, 7, 1, 4]
print "before .uniq() the array is #{find_unique}\n"
print "after .uniq() the array is #{find_unique.uniq}\n\n"

puts ' ---------------- combine unique elements from 2 arrays to a new one ---------------- '
one = [1, 2, 2]
two = [1, 3, 6, 6]
# Remove duplicates
print one | two
puts
# Get unique elements that exist only in 1 array
print one - two




