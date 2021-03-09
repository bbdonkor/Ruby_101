def average(array)
  sum = []
  new_sum = []

  sum = array.inject { |n_sum, n| n_sum + n }
  
  new_sum = sum / array.size

  new_sum.to_f
  
end

puts average([1, 6])
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])