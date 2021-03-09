number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}
pets = number_of_pets.keys # => ['dogs', 'cats', 'fish']
counter = 0                                           # counter (2) 

loop do                                               # loop
  break if counter == number_of_pets.size             # counter 
  current_pet = pets[counter]                         # retrieving current value
  current_pet_number = number_of_pets[current_pet]    # retrieving current value
  puts "I have #{current_pet_number} #{current_pet}!"
  counter += 1
end

# I have 2 dogs!
# I have 4 cats!
# I have 1 fish!
# lucas@lucas-VivoBook-15-ASUS-Laptop-X540MA-X543MA:~/Core_ls/lesson_4$ ruby test_area.rb
# I have {"dogs"=>2, "cats"=>4, "fish"=>1} ["dogs", "cats", "fish"]!
# I have {"dogs"=>2, "cats"=>4, "fish"=>1} ["dogs", "cats", "fish"]!
# I have {"dogs"=>2, "cats"=>4, "fish"=>1} ["dogs", "cats", "fish"]!
# lucas@lucas-VivoBook-15-ASUS-Laptop-X540MA-X543MA:~/Core_ls/lesson_4$ ruby test_area.rb
# I have {"dogs"=>2, "cats"=>4, "fish"=>1} dogs!
# I have {"dogs"=>2, "cats"=>4, "fish"=>1} cats!
# I have {"dogs"=>2, "cats"=>4, "fish"=>1} fish!
# lucas@lucas-VivoBook-15-ASUS-Laptop-X540MA-X543MA:~/Core_ls/lesson_4$ ruby test_area.rb
# I have 2 dogs!
# I have 4 cats!
# I have 1 fish!

#   Looping comprises four basic elements: a loop, a counter, 
#   a way to retrieve the current value, and a way to exit the loop. 
#   It's important to understand how to manually loop over collections 
#   with nothing more than these 4 tools 