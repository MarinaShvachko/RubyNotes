#require_relative used if files in the same directory
# require reads and parses fileIO only once, needs absolute path to the fileIO
# load - reads and parses fileIO every time you call Load
require_relative 'BaseClass'

class ChildClassWithConstructor < BaseClass

  def initialize(age, phone, name)
    super(age, phone) #use constructor from superclass
    @name = name
  end

  def print_info
    puts "Age = #{@age}, phone = #{@phone}, name = #{@name}"
    puts @@num_created_objects
  end

end

test = ChildClassWithConstructor.new(22, 9957634, "Ted")
test.print_info