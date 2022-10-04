puts "----------- sort arrays in array by second element --------------"
data = [
  ['france', 140_000],
  ['usa', 300_000],
  ['germany', 40_000]
]

#sort by numbers
data.sort_by! { |row| row[1] } #sort by second column
#soet via each do
# data.sort_by! do |row|
#   row[1]
# end
#print sorted array
data.each { |el1, el2| puts el1 + " - " + el2.to_s }

puts "----------------------------------- sort dates reversed order -------------------------------------------"
data = [
  ['11-9-2020', 'france', 10_000],
  ['11-10-2020', 'usa', 35_000],
  ['13-12-2020', 'india', 55_000],
  ['12-11-2020', 'france', 13_000],
  ['12-12-2020', 'usa', 22_000],
  ['11-12-2020', 'india', 54_000],
]
#sort by date (not by month and year)
def sort_cases(array)
  sorted = array.sort_by do |date|
    day, month, year = date.first.split('-')
    Time.new(year, month, day)
  end
  sorted.reverse
end
#call method
result = sort_cases(data)
#print
result.each { |f,s,t| puts f.to_s + " - " + s.to_s + " - " + t.to_s }

