weather = "Raining, Thunderstorm"

answer = case (weather)
when "Sunny", "Not really sunny"
  "Go out"
when "Raining", "Thunderstorm"
  "Take an umbrella"
else
  "Stay home"
end
puts answer

price = 4000

case (price)
when 4000..5000
  puts "Expensive"
when 2999..3999
  puts "Normal"
end