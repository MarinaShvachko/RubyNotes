class BaseClass
  CONSTANT = 9
  # Class variable
  @@num_created_objects = 0

  def initialize(age, phone)
    # Instance variable
    @age = age
    @phone = phone
  end

  def print_hello()
    print 'Hello'
  end
end


# Example how to create object
test = BaseClass::new(2, 9876)
test.print_hello
