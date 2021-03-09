def stringy(num)
  numbers = []

  num.times do |index|
    number = index.even? ? 0 : 1
    numbers << number
  end

  numbers.join
end

puts stringy(6)
puts stringy(8)
puts stringy(12)