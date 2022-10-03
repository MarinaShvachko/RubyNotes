weather = "Raining, Thunderstorm"
have_umbrella = true

if weather == "Raining" && !have_umbrella
  puts "You need an umbrella"
elsif weather == "Raining" && have_umbrella
  puts "Well done, you are ready"
else
  puts "Sunny weather"
end

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
