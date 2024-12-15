class SimpleExample
  day = 'Tuesday'

  case(day)
    when 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'
      puts 'Weekday'
    when 'Saturday', 'Sunday'
      puts 'Holiday'
  end
end

puts "This is a string"
puts 'And this is a string'
puts %(and this is also)
puts %{and this}
puts %|even now, this is how we can use ['], like don't can't and so on|
