def multiplier(numbers, multiply_criteria)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size
    
    current_number = numbers[counter]
    doubled_numbers << (current_number * multiply_criteria)
    
    counter += 1
  end
  doubled_numbers
end


my_numbers = [1, 3, 4, 8, 12]

puts multiplier(my_numbers, 54)


# -----------------------------------
# def multiply(numbers, multiplier)
#   multiplied_numbers = []
#   counter = 0
# 
#   loop do
#     break if counter == numbers.size
# 
#     multiplied_numbers << numbers[counter] * multiplier
#     counter += 1
#   end
# 
#   multiplied_numbers
# end