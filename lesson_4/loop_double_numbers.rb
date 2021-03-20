# def double_numbers(numbers)
# doubled_numbers = []
# counter = 0
# 
# loop do
#  break if counter == numbers.size
# 
#  current_number = numbers[counter] # => [1, 4, 3, 7, 2, 6]
#  # p current_number
#  doubled_numbers << current_number * 2 # => [2, 8, 6, 14, 4, 12]
#  # p doubled_numbers
# 
#  counter += 1
# end
# 
# # doubled_numbers
# end


def double_numbers!(numbers)
  counter = 0

  loop do 
    break if counter == numbers.size

    current_number = numbers[counter] # => [1, 4, 3, 7, 2, 6]
    # p current_number
    numbers[counter] = current_number * 2 # => [2, 8, 6, 14, 4, 12]

    counter += 1
  end
  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
puts double_numbers!(my_numbers) # => [2, 8, 6, 14, 4, 12]
