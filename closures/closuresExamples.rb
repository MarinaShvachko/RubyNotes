#Blocks, Procs and Lambdas are closures in Ruby.
def plus_1(y)
  y.call       #remembers the value of x = 3
end

x = 3
y = -> { x + 1 }
puts plus_1(y)  #2
puts " -------------------------------- lambda ----------------------------- "

def lambda_message_printer(my_lambda)
  message = "Welcome to Lambda Message Printer"
  my_lambda.call              #Call my_lambda
  puts "But in this function/method message is :: #{message}"
end

message = "bla bla bla"
my_lambda = -> { puts "This message remembers message :: #{message}" }
lambda_message_printer(my_lambda)

puts " -------------------------------- proc --------------------------------"

def proc_message_printer(my_proc)
  message = "Welcome to Proc Message Printer"
  my_proc.call              #Call my_proc
  puts "But in this method message is :: #{message}"
end

my_proc = proc { puts "This message remembers message :: #{message}" }
proc_message_printer(my_proc)

puts " ---------------------- block -------------------------------- "

def block_message_printer
  message = "Welcome to Block Message Printer"
  if block_given?
    yield message
  end
  puts "But in this function/method message is :: #{message}"
end

message = gets
block_message_printer { puts "This message remembers message :: #{message}" }



