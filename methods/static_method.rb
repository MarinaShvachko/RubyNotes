class StaticMethod
  @@number_of_nights = 0

  # Class method, can return class variable
  def self.eat_stat
    # puts "I'm eating"
    @@number_of_nights
  end

  # one more way to create class method
  def StaticMethod.eat_stat2
    puts 'One more way to create class method'
  end

end

num = StaticMethod.eat_stat
puts num
StaticMethod.eat_stat2
