puts ">> Please enter an integer greater than 0: "
value = gets.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp


sum_result = (1..value).reduce(:+)

product_result = (1..value).inject(1) { |product, n| product * n }


if choice == 's'
  puts "\nThe sum of the integers between 1 and #{value} is #{sum_result}."
elsif choice == 'p'
  puts "\nThe product of the integers between 1 and #{value} is #{product_result}. "
end 


# --------------------------

# def compute_sum(number)
#   total = 0
#   1.upto(number) { |value| total += value }
#   total
# end
# 
# def compute_product(number)
#   total = 1
#   1.upto(number) { |value| total *= value }
#   total
# end
# 
# puts ">> Please enter an integer greater than 0"
# number = gets.chomp.to_i
# 
# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# operation = gets.chomp
# 
# if operation == 's'
#   sum = compute_sum(number)
#   puts "The sum of the integers between 1 and #{number} is #{sum}."
# elsif operation == 'p'
#   product = compute_product(number)
#   puts "The product of the integers between 1 and #{number} is #{product}."
# else
#   puts "Oops. Unknown operation."
# end