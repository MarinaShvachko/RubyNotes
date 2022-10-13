def my_method(my_proc)
  count = 3
  my_proc.call
end

count = 1

my_proc = Proc.new { puts count }

count = 22
puts my_method(my_proc)
