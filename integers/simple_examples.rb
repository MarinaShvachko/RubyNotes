class SimpleExamples
  rand_num = rand(1..100)
  my_num = 15

  case(rand_num)
  when rand_num == my_num
    puts "Win!"
  else
    puts "Not win, try again. The number is #{rand_num}"
  end
end
