class FindIntersection

  def intersection(first_arr, second_arr)
    first_arr.intersection(second_arr)
  end
end


first = [1, 3, 8]
second = [9, 3, 1]
test = FindIntersection.new
print test.intersection(first, second)