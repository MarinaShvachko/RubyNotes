students = %w[Anna Zippo Filipo Karl]
print students
puts
puts students.any?
puts
print students.sort
puts
numbers = [1,2,3]
print numbers << 4 #add to the end
puts
print numbers.unshift 0 #add to the start
puts
puts "  ----------------- get first and last element -----------------"
puts numbers.first
puts numbers.last
puts numbers.length.to_s + " - get length"
puts "  -----------------  check if include  -----------------"
puts numbers.include? 2
puts "  -----------------  get sum of all elements  -----------------"
puts numbers.sum
puts "  -----------------  comparison  -----------------"
items = [1,2]
print "compare items == [1,2] - "
puts items == [1,2]

#compare by elements but send by link
arr1 = [1,2,3]
arr2 = arr1
print arr1 == arr2
arr1.unshift(0)
puts
puts arr1 == arr2
print arr1
print arr2
