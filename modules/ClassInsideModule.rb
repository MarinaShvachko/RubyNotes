#they are also named "Mixins"

module ClassInsideModule

  class AddNumbers
    def add(num1, num2)
      puts num1+num2
    end
  end

  class SubtractNumbers
    def minus(num1, num2)
      puts num1-num2
    end
  end

end

test_add = ClassInsideModule::AddNumbers.new
test_add.add(1,3)

test_min = ClassInsideModule::SubtractNumbers.new
test_min.minus(9, 2)