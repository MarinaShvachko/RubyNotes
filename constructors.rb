class Constructors

  #default values, if not specify during creation this values will be used
  def initialize(name = "Lilia", age = 0)
    @name = name
    @age = age
  end

  def get_name
    puts @name
  end

  def get_age
    puts @age
  end

end

#example where default values are created
test = Constructors.new
test.get_name
test.get_age

#be careful, here is name against age is assigned
test2 = Constructors.new(3)
test2.get_name
test2.get_age


