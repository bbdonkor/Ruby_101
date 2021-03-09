CURRENT_YEAR = Time.now.year

puts "What is your age?: "
age = gets.to_i

puts "At what age would you like to retire?: "
retirement_age = gets.to_i

active_years = (retirement_age - age)

retirement_year = (active_years + CURRENT_YEAR)

puts "\nYour age today is #{age} years old"

puts "We are in the year #{CURRENT_YEAR}.\n\nYou will retire in #{retirement_year}."
puts "You have another #{active_years} years to be active!"



# ------------------------------------------
# print 'What is your age? '
# current_age = gets.to_i
# 
# print 'At what age would you like to retire? '
# retirement_age = gets.to_i
# 
# current_year = Time.now.year
# work_years_to_go = retirement_age - current_age
# retirement_year = current_year + work_years_to_go
# 
# puts "It's #{current_year}. You will retire in #{retirement_year}. "
# puts  "You have only #{work_years_to_go} years of work to go!"
# ------------------------------------------
# Discussion
# In this solution, we use Time.now to get the current date. 
# This returns a Time object. The Time class has a fairly useful 
# method, Time#year that gives us the current year. 
# From there we can determine the retirement year based on 
# the two inputs and the current year.