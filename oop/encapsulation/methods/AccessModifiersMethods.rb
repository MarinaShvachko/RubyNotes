# https://medium.com/@sologoubalex/common-notes-about-public-private-and-protected-methods-in-ruby-ed40835b8895

# methods:
# (Private and protected methods are accessible via the send method. This method ignores the access level)
# - private
# - protected
# - public

class AccessModifiersMethods

  def public_meth
    puts 'Hello from public method!'
  end

  private

  def private_meth
    puts 'Hello from private method!'
  end

  protected

  def protected_meth
    puts 'Hello from protected method!'
  end

end

method_example = AccessModifiersMethods.new
method_example.public_meth # we have result Hello from public method!

# we will see an error if we call private or protected method outside class
# method_example.private_meth
# method_example.protected_meth

puts
puts '----- example to call protected / private method from a child class -----'
class ChildClass < AccessModifiersMethods

  def use_protected_method
    protected_meth
  end

end

use_protect_meth = ChildClass.new
use_protect_meth.use_protected_method

puts
puts '----- Private and protected methods are accessible via the send method: object_name.send(:my_method_name)'
# syntax: object.send(:method_name)   or   object.send("method_name")
method_example.send(:private_meth)
method_example.send(:protected_meth)

# there is another public_send method, it can be used only with public method
# method_example.public_send(:private_meth) here we will have an error


puts
puts
puts '----- ways to make methods private (only for class methods): -----'
puts '----- 1. call method private_class_method, but only on class methods -----'
class Pumpkin
  def self.eat_pumpkin
    puts 'nom nom'
  end

  # check if method is private
  puts private_methods(false).include?(:eat_pumpkin) # false

  # make the method private
  private_class_method :eat_pumpkin

  # check if method is private
  puts private_methods(false).include?(:eat_pumpkin) # true
end

puts ' ----- # 2 create a method private by calling private_class_method in method declaration -----'
class Watermelon
  private_class_method def self.eat_watermelon
    puts "I'm eating watermelon"
  end
  puts private_methods(false).include?(:eat_watermelon) # if call outside the class - doesn't work

end

puts ' ----- # 3 create an eigenclass and use private keyword -----'
class Apple
  def self.eat_apple
    puts "I'm eating apple"
  end

  # make the method private
  class << self
    private :eat_apple
  end

  puts private_methods(false).include?(:eat_apple)
end

puts
puts '----- it is possible to rewrite access modifiers of a method, the last one will be used -----'

class RewriteModifiers

  def my_method
    puts 'Hello!'
  end


  private :my_method
  protected :my_method
  public :my_method


end

rewrite_modifiers = RewriteModifiers.new
rewrite_modifiers.my_method # can't call private and protected
