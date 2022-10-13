#In Partial Application, we create a lambda that takes a parameter
# and returns a lambda that does something with it

multiply_function = -> (number) do
  -> (another_number) do
    number * another_number
  end
end

doubler = multiply_function.(2)
tripler = multiply_function.(3)

puts doubler.(4)
puts tripler.(4)
