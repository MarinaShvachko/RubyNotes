# variables:
# - private
# - protected
# - public

class AccessModifiers
  attr_accessor :speed # without it is not possible to get value by object_name.variable_name

  # constructor
  def initialize(gear, speed)
    @gear = gear
    @speed = speed
    puts "A car is created, gear = #{gear} and speed = #{speed}"
  end

  def apply_break(decrement)
    @speed -= decrement
  end

  # visible only within the class
  private

  def change_gear(new_gear)
    @gear = new_gear
  end

end



car = AccessModifiers.new('powerful', 30)
car.apply_break(10)
puts "Speed of the car after using break(car.apply_break) = #{car.speed}"






