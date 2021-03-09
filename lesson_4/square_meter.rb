puts "Enter the length of the room"
l_of_room = gets

puts "Enter width of room"
w_of_room = gets

def size_of_room(length, width)

  square_m = 10.7639
  result = ''

  a_of_room = length.to_i * width.to_i

  result = a_of_room.to_i*square_m

  puts "The area of the room is #{a_of_room} square meters (#{result.round(2)} square feet). "
end

size_of_room(l_of_room, w_of_room)

# -----------------------------------

# SQMETERS_TO_SQFEET = 10.7639
# 
# puts '==> Enter the length of the room in meters: '
# length = gets.to_f
# 
# puts '==> Enter the width of the room in meters: '
# width = gets.to_f
# 
# square_meters = (length * width).round(2)
# square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)
# 
# puts "The area of the room is #{square_meters} " + \
    #  "square meters (#{square_feet} square feet)."