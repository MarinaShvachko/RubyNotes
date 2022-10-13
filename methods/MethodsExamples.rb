#-------------------------- with parameters ----------------------------------
def add(num1, num2)
  return num1 + num2
end

def say_hello(name)
  puts "Hello #{name}, welcome!"
end

#-------------------------- default value ----------------------------------
def add_with_default_value(num1=2, num2) #if I don't specify first parameter it will be taken from here
  return num1+num2
end

puts add(-500, 200)
puts say_hello("Marina")
puts add_with_default_value(7)


