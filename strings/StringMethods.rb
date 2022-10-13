address = "6754 Tomato street, Canada, CA"
#get class
puts address.class
puts "-------------------------------------------- CONCAT -------------------------------------------------"
name = "John"
familyName = "Doe"
puts name + " " + familyName
puts name.concat(familyName) #result = JohnDoe
puts "-------------------------------------------- UPCASE -------------------------------------------------"
city = "Boston"
puts city.upcase + "  - \"city.upcase\" creates a copy of city variable, the variable itself isn't changed. Initial variable = " + city
puts city.upcase! + " - \"city.upcase!\" changes variable. Initial variable changed and = " + city
puts "-------------------------------------------- DELETE -------------------------------------------------"
puts fruit = "banana"
puts fruit.delete("a") + " - a deleted"
puts fruit.delete("ab") + " - ab deleted, order doesn't matter"
puts fruit.delete("aB") + " - aB delete, B isn't deleted so case sensitive"
puts "-------------------------------------------- REPLACE -------------------------------------------------"
puts vegetable = "Potato" + " original string"
vegetable.replace"Cucumber"
puts vegetable + " - replaced by \"vegetable.replace\"Cucumber\"\""
puts "-------------------------------------------- Capitalize -------------------------------------------------"
puts animal = "CAT"
puts animal.capitalize
puts "-------------------------------------------- Reverse -------------------------------------------------"
puts meal = "soup"
puts meal.reverse
puts "-------------------------------------------- Length -------------------------------------------------"
puts meal.length.to_s + " - this is a length of \"meal\" word"
puts "-------------------------------------------- Strip -------------------------------------------------"
puts bad_word = "    hey   "
puts bad_word.strip + " - after strip all spaces before and after the word were deleted"
puts bad_word.lstrip + " - only left spaces are deleted"
puts bad_word.rstrip + " - only right spaces are deleted"
puts "-------------------------------------------- GSUB -------------------------------------------------"
puts food = "good food"
puts food.gsub("good", "junk") #replace good to junk
puts "-------------------------------------------- INCLUDE VARIABLES IN STRING -------------------------------------------------"
price = 6.99
puts "You should pay #{price} for these apples"

puts "example two".swapcase!
