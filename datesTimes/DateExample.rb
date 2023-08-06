require 'Date'

date = Date.today
puts "Date today #{date}"

parsed_date = Date.parse(date.to_s).strftime("%b %-d")
puts "Date in a format [May 29] = #{parsed_date}"



timestamp = 1687132800000 / 1000  # Convert to seconds
time = Time.at(timestamp)
puts time
