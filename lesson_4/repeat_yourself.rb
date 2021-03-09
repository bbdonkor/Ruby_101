# **Rules & Requirements - P** 
# 
# 
#     - Write a method
#     - Takes two arguments
#         - A String and positive integer
#     - Prints the string as many times as the integer indicates
#         -Looping mechanism / Times mechanism
# 
# **Examples and Test Cases**
# 
# method("Daft punk", 3) --->  prints 'Daft Punk' ...(2)
# method("Body count", 4) ---> prints 'Body count' ...(3)
# method("Consistent", 2) ---> prints 'Consistent' ...(1)


def repeat(word, num)

    num.times do |string| 
        puts "#{word}"
    end 
end 

repeat('Harlem', 5)

