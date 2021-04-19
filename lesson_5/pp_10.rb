arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |element|
  element.select do |element1|
    element1 % 3 == 0
  end
end