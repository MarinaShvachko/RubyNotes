#require_relative used if files in the same directory
# require reads and parses fileIO only once, needs absolute path to the fileIO
# load - reads and parses fileIO every time you call Load
require_relative 'BaseClass.rb'

class ChildClass < BaseClass

  def print_var_from_superclass
    puts "These are variables from superclass #{@age} - #{@phone}"
    puts CONSTANT
    puts @@num_created_objects = 2
  end

end

test = ChildClass.new(27, 9956667788) #constructor called from superclass
test.print_var_from_superclass