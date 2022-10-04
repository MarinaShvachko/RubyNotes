numbers = [1,2,3,4]

#iterate, increase by 1 and print
numbers.each { |item| puts item+1 }

puts "----------- each do example--------------"
result = 0
numbers.each do |item|
  result+=item
end
print "summ of elements = "
puts result
