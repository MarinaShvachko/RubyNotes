#brings all methods and fields from the module into the class object
module Flyable

  def noise
    puts "pppp-rrrrrr"
  end

end

class Zoo
  include Flyable
end

test = Zoo.new
test.noise

#brings methods and fields to the class itself (i.e. static)
# module Drinkable
#   def taste
#     puts "Very sweet"
#   end
# end
#
# class Drinks
#   extend Drinkable
# end
#
# class Cola < Drinks
# end
#
# class Coffee < Drinks
# end


