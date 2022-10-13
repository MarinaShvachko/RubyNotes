class Loops

  def for_loop(number)
    for i in 0..number #i initialized by number after in?
      print "#{i},"
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
      print "#{x}, "
      x+=2
    end
  end

  #---------------------------------------------------------------
  def times_example(num)
    num.times { puts "Hey"}
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
puts
fl.times_example(2)