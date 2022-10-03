class SimpleExample
  day = "Tuesday"

  case(day)
    when "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"
      puts "Weekday"
    when "Saturday", "Sunday"
      puts "Holiday"
  end
end
