

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

# select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}



#def select_fruit(input)
#
#  input.select { |k, v| v == "Fruit"}
#
#end
#
#puts select_fruit(produce)


# ----------------------------

def select_fruit(produce_list)
 produce_keys = produce_list.keys # => ["apple", "carrot", "pear", "broccoli"] - From a hash  to an array
 # p produce_keys
 counter = 0
 selected_fruits = {}

 loop do
   # this has to be at the top in case produce_list is empty hash
   break if counter == produce_keys.size

   current_key = produce_keys[counter] # => ("apple", "carrot", "pear", "broccoli") - From an array to string
   # p current_key
   current_value = produce_list[current_key] # => ("Fruit", "Vegetable", "Fruit", "Vegetable") => To access values, you have to iterate through keys.
   # p current_value 

   # used to be current_value == 'Fruit'
   if current_value == 'Fruit'
     selected_fruits[current_key] = current_value # => {"Fruit", nil, "Fruit, nil"}
   end
   # p selected_fruits[current_key]

   counter += 1
 end

 selected_fruits
end

p select_fruit(produce)