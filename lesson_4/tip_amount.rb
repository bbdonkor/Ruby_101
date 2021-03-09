puts "What is the bill?: "
bill = gets.to_i

puts "What is the tip percentage?:"
tip_rate = gets.to_i

tip_percentage = (tip_rate.to_f / 100)
tip_amount = (bill*tip_percentage)


puts "\nThe bill amount is: #{bill} $"
puts "The tip percentage is #{tip_percentage.to_s}%"


puts "\nThe tip is #{tip_amount.to_f} $"
puts "The total bill is #{bill.to_f} $"

# --------------------------------------

# print 'What is the bill? '
# bill = gets.chomp
# bill = bill.to_f
# 
# print 'What is the tip percentage? '
# percentage = gets.chomp
# percentage = percentage.to_f
# 
# tip   = (bill * (percentage / 100)).round(2)
# total = (bill + tip).round(2)
# 
# puts "The tip is $#{tip}"
# puts "The total is $#{total}"


# Discussion
# We first obtain the amount of the bill from the user,
# not worrying too much about data validity for this simple problem. 
# Then we get the tip percentage.
# 
# Next, we calculate the actual tip, and the total bill,
# hen output the results.
# 
# Further Exploration
# Our solution prints the results as $30.0 and $230.0 i
# nstead of the more usual $30.00 and $230.00. 
# Modify your solution so it always prints the results with 
# 2 decimal places.
# 
# Hint: You will likely need Kernel#format for this.