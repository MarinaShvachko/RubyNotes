weather = "Raining, Thunderstorm"
have_umbrella = true

if weather == "Raining" && !have_umbrella
  puts "You need an umbrella"
elsif weather == "Raining" && have_umbrella
  puts "Well done, you are ready"
else
  puts "Sunny weather"
end
