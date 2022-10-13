require_relative 'ClassInsideModule'
#created for using as example in module_with_modules
module B
  def module_name_b
    puts "Module B"
  end
end

module C
  def module_name_c
    puts "Module C"
  end
end

module ModuleWithModules

  class Calculator
    include ClassInsideModule
    include B
    include C

    def just_method_in_class
      puts "just from method in class Calculator"
    end

  end

end

#why methods add and subtract called
testM = ModuleWithModules::Calculator.new
testM.module_name_c
testM.module_name_b
testM.just_method_in_class
