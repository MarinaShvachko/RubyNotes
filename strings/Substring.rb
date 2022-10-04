vegetable = "potato"
puts vegetable[0...3] # from start to 3-d index excluding (pot), the same as [0, 3]
puts vegetable[0..3] # from start to 3-d index including (pota)

puts vegetable[2..3] # from 2-d index to 3-d including (ta)
puts vegetable[2...3] # from 2-d index to 3-d excluding 3-d (t)

puts vegetable[2..-1] # from 2-d index to the end (tato)

puts " ------------------------- with commas ---------------------- "
puts vegetable[1, 3] # from 1-st take 3 elements (ota)

puts " ------------------------- check if word/sentence contains substring ---------------------- "
dinner = "today we will eat potatoes"
puts dinner.include?("potato") #case sensitive




