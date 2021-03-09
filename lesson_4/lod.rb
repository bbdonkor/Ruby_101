def digit_list(number)

number.digits.reverse

end

puts digit_list(369) == [3, 6, 9]
puts digit_list(747) == [7, 4, 7]
puts digit_list(1609) == [1, 6, 0, 9]