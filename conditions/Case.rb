weather = "Raining, Thunderstorm"

case (weather)
when "Sunny", "Not really sunny"
  puts "Go out"
when "Raining", "Thunderstorm"
  puts "Take an umbrella"
else
  puts "Stay home"
end


price = 3999

case (price)
when 4000..5000
  puts "Expensive"
when 2999..3999
  puts "Normal"
end