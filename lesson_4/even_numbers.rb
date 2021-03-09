# 1.upto(97) do |i|
#   next if i % 2 == 1
#   puts i
# end

# --------------------------

# value = 0
# while value < 99
#   puts value
#   value += 2
# end

# ----------------------------


# for i in 1..99
#   next if i % 2 == 1
#   puts i
# end

# ------------------------

value = 0

while value < 99

  puts value if value.even?
  value += 1

end