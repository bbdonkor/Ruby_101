def sum_of_digits(number)

  n = number
  sum = 0

  while n > 0

    sum += n % 10
    n /= 10
  end

  puts "the sum of #{number} is => #{sum}"
end

sum_of_digits(513)
sum_of_digits(897)
sum_of_digits(747)
sum_of_digits(369)
sum_of_digits(741)
sum_of_digits(999)
sum_of_digits(888)
sum_of_digits(444)
sum_of_digits(333)
sum_of_digits(858)



# Alternative codes

# def sum(number)
  # number.to_s.chars.map(&:to_i).reduce(:+)
# end

# 23.to_s        # => "23"
  # .chars       # => ["2", "3"]
  # .map(&:to_i) # => [2, 3]
  # .reduce(:+)  # => 5


