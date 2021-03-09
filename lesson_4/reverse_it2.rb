def reverse_string(string)

# new_string = string.split(' ').map do |element|
  # if element.size >= 5
    # element.reverse
  # else
    # element
  # end
# end
  # new_string.join(' ')

  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end


puts reverse_string('Makaveli Club')
puts reverse_string('Mickey Mouse Done Did It Again')
puts reverse_string('Bugs Bunney is a love buggey')