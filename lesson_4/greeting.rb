puts "What is your name? "
name = gets.chomp

def greeting(input)

  if input.include?("!")
    puts "HELLO #{input.upcase}. WHY ARE WE YELLING."
  elsif 
    puts "Hello #{input}."
  end
end

greeting(name)


# --------------------------------------------------
# print 'What is your name? '
# name = gets.chomp
# 
# if name[-1] == '!'
#   name = name.chop
#   puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end

# --------------------------------------

# Discussion
# -------------------------------------
# We begin by asking for and obtaining the user's name. 
# We then test the last character of the user's name (name[-1]) 
# to see if it is an exclamation mark.
# 
# If the last character of the name is an exclamation mark,
# we chop that exclamation mark from the name,
# then print the HOUTING version of the greeting.
# Otherwise, we just print a normal greeting.
# 
# Note that this solution uses both String#chomp and String#chop. 
# These two methods are closely related, but slightly different:
# #chomp conditionally removes the tail end of a string (defaulting 
# to a newline), while #chop removes the last character unconditionally.
# Both versions also have ! versions that modify the string directly;
# we could have used these here, but decided not to because the use
# of the ! in both the method name and the string might be mildly
# confusing.
# 
# Further Exploration
# -------------------------------
# Try modifying our solution to use String#chomp! and String#chop!, 
# respectively.