numbers = [2,3,4,5]

#iterate, increase by 1 and print
numbers.each { |item| puts item+1 }

puts '----------- each do example--------------'
result = 0
numbers.each do |item|
  result+=item
end
puts "summ of elements = #{result}"

puts '----------- iterate array of strings--------------'
cities = %w[Ney-York Chicago California Devis]
for city in cities
  print "#{city}, "
end

puts
puts '----------- iterate array and delete white spaces --------------'
record_arr = ['  aaa', 'dddd ', '  ddd   ']
record_arr.each(&:strip!)
puts record_arr