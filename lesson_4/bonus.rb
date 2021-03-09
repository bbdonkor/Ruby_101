


def bonus(salary, bonus)

  bonus ? (salary / 2) : 0

end


# puts bonus(3000, true) == 1500
# puts bonus(4500, false) == 0
# puts bonus(1000, true) == 500
# puts bonus(2500, true) == 1250


# EXPLAINATION


# The solution to this exercise takes advantage 
# of the ternary operator.
# We're able to use bonus as the condition because it's a boolean,
# which means its value will only be true or false. If it's true,
# then we divide salary by 2 and return the quotient. If it's false,
# then we return 0.