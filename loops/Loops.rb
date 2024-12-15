class Loops

  def for_loop(number)
    for i in 0..number
      print "for i in .. #{i},"
    end
  end

  def for_loop_each(number)
    (0..number).each { |i| #i initialized by number after in?
      print "#{i},"
    }
  end

  #---------------------------------------------------------------
  def while_loop
    num = 7
    while num >= 0
      print "#{num}, "
      num-=1
    end
  end

  #---------------------------------------------------------------

  def until_loop
    x = 0
    max_num = 10
    until x > max_num #until false
      print "Until loop = #{x}, "
      x+=2
    end
    puts
  end

  def one_line_until_loop
    i=0; print "One line until loop #{i+=1}, " until i == 4
  end

  #---------------------------------------------------------------
  def times_example(num)
    num.times { puts "Hey"}
  end

  def times_do_example
    5.times do |number|
      puts "x times do example = #{number}"
    end
  end

  def loop_example_break
    i = 0
    loop do
      puts "break example = #{i}"
      i+=1
      break if i == 3 # Exit the loop
    end
  end

  def loop_example_next
    i = 0
    loop do
      i+=1
      next if i == 3 # Exit the loop
      puts "next example = #{i}"
      break if i == 5
    end
  end

  def up_to_example
    5.upto(10) {|num|puts "up to .. #{num}"}
  end

  def down_to_example
    10.downto(5) {|num|puts "down to .. #{num}"}
  end

  def step_example
    1.step(10, 2) {|num| puts "Step example #{num}"}
  end

end

fl = Loops.new
fl.for_loop(4)
puts
fl.for_loop_each(5)
puts
fl.while_loop
puts
fl.until_loop
fl.one_line_until_loop
puts
fl.times_example(2)
fl. times_do_example
fl.up_to_example
fl.down_to_example
fl.loop_example_break
fl.loop_example_next
fl.step_example

