#Instance variables starts with @, is used in instance methods, ALL methods can use them
#Class variables starts with @@ (can use like static var for counting created objects, it is like static)
#Constants, they are upper cases
#Local variables, used inside methods
#Global variable
class Person
  @@num_of_persons = 0
  @@example_class_var = "test"
  CONSTANT_VAR = "Constant var"

  def initialize(name, surname)
    @name = name
    @surname = surname
    @@num_of_persons +=1
  end

  def show_name_surname
    puts "Name is #{@name}, surname is #{@surname}"
  end

  def show_num_of_customers
    puts "Number of created customers #{@@num_of_persons}"
  end

  def loc_var_example
    name = "Peter"
    puts name
  end

  def get
    puts @@example_class_var
  end

  def set(nuw_var)
    @@example_class_var = nuw_var
  end

end

peter = Person.new("Peter", "Poll")
leon = Person.new("Leon", "Brut")
peter.show_name_surname
peter.show_num_of_customers

#class @@variable is created only 1 in memory,
peter.set("kkk")
puts peter.get
leon.set"jjj"
puts peter.get



#Global variable, starts with $
# We do not need to create an object to call it
class Animal
  $number_of_legs = 4
end
puts $number_of_legs
#one more way get access to variable
puts "test #$number_of_legs"






