require "pry" # add this to use Pry

counter = 0

loop do
  counter += 1
  break if counter == 1
  binding.pry
end

# In order to use Pry, we have to require it using require "pry". 
# Once we've required Pry, we can then insert binding.pry anywhere in 
# our code, and when Ruby gets to that line, execution will stop and 
# we'll be able to inspect the state of our program at that point.

# In order to continue execution of the program, press Ctrl + D. 