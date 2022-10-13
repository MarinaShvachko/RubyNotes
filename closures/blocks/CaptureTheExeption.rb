#we can capture the exception using block_given? method. method will be executed only when block is given
# without block_given? if we call method we will see "in `my_method_impl': no block given (yield) (LocalJumpError)"
def my_method_impl
  yield if block_given?
end

my_method_impl #won't be executed
my_method_impl { puts "Hello impl"}
