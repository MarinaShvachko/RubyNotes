require 'rubystats'

age = 36
puts age.class

big_num = 9.99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
puts big_num.class.to_s +  " - get to know class"

zero = 0
puts zero.even?.to_s + " - get to know even or odd"
puts zero.to_f.to_s + " - convert to float"
puts zero.to_s + " - convert to string"
puts zero.class.to_s + " - check class of a variable after all convertations, it's still Integer"
puts
round_example = 5.0654321
puts round_example.round(4).to_s + " - round to 4 numbers"

puts "------------- example generate random number --------------------------"
puts rand() # 0.0 >= random < 1.0
puts rand(8)  # 0 >= random < 8, negative numbers converted to abs
puts rand(3..5) #inclusive both numbers
puts rand(3...5) #inclusive left, but exclusive right

puts "------------- example generate the same random sequence each run (seed) --------------------------"
#seed is the same (5) so random numbers would be the same each run
# srand(5)
# puts rand() #0.22199317108973948
# puts rand() #0.8707323061773764
# print 10.times.map {rand(10)} #[6, 6, 0, 9, 8, 4, 7, 0, 0, 7]
# puts
# print 10.times.map {rand(10)} #[1, 5, 7, 0, 1, 4, 6, 2, 9, 9]

puts "------------- example generate random number with Random class --------------------------"
puts Random.rand(2..5) #if Random.rand is given a negative or 0 argument, it raises an ArgumentError.

puts "------------- example generate random number with Normal Distribution --------------------------"
# $ gem install rubystats
# require 'rubystats'
adult_male_height = Rubystats::NormalDistribution.new(170, 10) #average height / deviation
puts sample = 5.times.map {adult_male_height.rng.round(1)}