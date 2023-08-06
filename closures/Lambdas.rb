#lambda example
favourite_drink = -> {puts 'coca-cola'}
favourite_drink.call

puts ' ---------------- in lambda code after lambda.call will be run  ---------------- '

def call_lambda
  puts 'This is text will be printed'
  lambd = -> {return 34}
  lambd.call
  puts 'This text will be printed'
end

call_lambda


puts ' ---------------- lambda will throw an error because not right number of arguments  ---------------- '
lambda_with_param = lambda {|num| puts " Parameter is #{num}"}
lambda_with_param.call