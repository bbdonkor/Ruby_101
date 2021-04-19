arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]


arr.sort_by! do |element|
  element.select do |element1|
    element1 % 3 == 1
  end
end
