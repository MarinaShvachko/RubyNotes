# can change in both sides, public -> private, private -> public

class ChangeAccessModifiers

  def pub_meth_one
    puts "I'm method one"
  end

  def pub_meth_two
    puts "I'm method two"
  end

  protected

  def protected_meth_three
    puts "I'm method three"
  end

  private

  def private_meth_four
    puts "I'm method four"
  end

end

class ChildChangeMethodAccessMod < ChangeAccessModifiers

  # make public parent method private
  private :pub_meth_one

  # make public parent method protected
  protected :pub_meth_two

  # make access wider
  public :protected_meth_three
  # make access wider
  public :private_meth_four
end

puts '----- methods from parent class -----'
parent_class = ChangeAccessModifiers.new
parent_class.pub_meth_one
parent_class.pub_meth_two

puts '----- methods from child class after changing access -----'
child_class = ChildChangeMethodAccessMod.new
# these calls return an error as methods are not public anymore
# child_class.pub_meth_one
# child_class.pub_meth_two
child_class.protected_meth_three
child_class.private_meth_four

puts
puts '----- methods to check methods accesses -----'
# methods to list what methods public/protected/private
puts "Public methods: #{ChangeAccessModifiers.public_instance_methods(false)}"
puts "Protected methods: #{ChangeAccessModifiers.protected_instance_methods(false)}"
puts "Private methods: #{ChangeAccessModifiers.private_instance_methods(false)}"

puts '----- and the same methods after changing access modifiers -----'
puts "Public methods: #{ChildChangeMethodAccessMod.public_instance_methods(false)}"
puts "Protected methods: #{ChildChangeMethodAccessMod.protected_instance_methods(false)}"
puts "Private methods: #{ChildChangeMethodAccessMod.private_instance_methods(false)}"
