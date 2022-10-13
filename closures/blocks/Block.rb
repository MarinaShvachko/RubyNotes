puts "------------------------- block example -------------------------"
#block it is code inside {}, or each, or map...
[1,2,3].each do|num|
  puts num
end

#if we want to pass a block to method it can be done through explicit and implicit methods:
puts "------------------------- explicit call -------------------------"
#explicit method (pass block and execute it immediately by block.call)
def my_method(&block)
  block.call
end

my_method { puts "Hello"}

puts " -- example with parameters --"
#example with parameters
def my_method_with_param(&block)
  block.call(1)
  block.call(2)
end

my_method_with_param { |num| puts num * 2 }

puts "------------------------- implicit block call -------------------------"
#implicit block call ("yield" finds and calls a passed block, we don't need add block and call it)
def my_method_impl
  yield
  yield
end

my_method_impl { puts "Hello impl"}

puts " -- example with parameters --"
def my_method_impl_param
  yield 1
  yield 2
  yield 3
end

my_method_impl_param {|num| puts num * 2} #num == number specified in yield