class AttrAccessors
  attr_accessor :name # because of attr_accessor we can read and change name value (write and read)
  attr_reader :id # we can only read value, can not change (can write via setter)
  attr_writer :age # we can only write new value, can't read (can read via get method)

  def initialize(name, id, age)
    @name = name
    @id = id
    @age = age
  end

  def set_name(name)
    @name = name
  end

  def set_id(id)
    @id = id
  end

  def get_age
    return @age
  end

  # def get_name
  #   return @name
  # end
end

test = AttrAccessors.new('Peter', 1, 23)
# we can read and change name
puts test.name
test.set_name('Danis')
puts test.name
test.name = 'Oliver'
puts test.name

# we can only read id, can't change without setter
puts "get id test.id = #{test.id}"
test.set_id(999)
puts "get id after change via setter = #{test.id}"
# test.id = 2 can't do this

# we can only assign new value, can't get directly: test.age, but can with getter
test.age = 24
puts test.get_age