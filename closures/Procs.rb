#proc = short for procedure = a block that can be directly stored in a variable

#to create a proc:
proc = Proc.new {puts 'Hello from proc'}
#to call:
proc.call

#multiple blocks as arguments
def my_method(print_name, print_age)
  print_name.call
  print_age.call(2)
end

print_name = Proc.new {puts 'Niko'}
print_age = Proc.new {|n| puts n}

my_method(print_name, print_age)

#to store symbol, method, hash in variable we need to convert them to proc

{a: 1, b: 2}.to_proc

:a.to_proc

def my_method_to_proc
  puts "method to proc"
end.to_proc

puts ' ---------------- procts won\'t throw an error because not right number of arguments  ---------------- '

proc_with_params = Proc.new {|num| puts " Parameter is #{num}"}
proc_with_params.call

puts ' ---------------- in procs code after proc.call will not be run  ---------------- '
def call_proc
  puts 'This is text before proc.call'
  my_proc = Proc.new {return 56}
  my_proc.call
  puts 'This is text after proc.call, it won\'t be printed'
end

num = call_proc #in num returned number is saved
puts num