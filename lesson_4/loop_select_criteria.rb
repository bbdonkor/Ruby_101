def general_select(produce_list, selection_criteria)
  produce_keys = produce_list.keys # => ["apple", "carrot", "pear", "broccoli"]
  # p produce_keys
  counter = 0
  selected_produce = {}

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter] 
    # p current_key
    current_value = produce_list[current_key] # => ("Fruit", "Vegetable")
    # p current_value

    # used to be current_value == 'Fruit'
    if current_value == selection_criteria 
      selected_produce[current_key] = current_value
    end
    # p selected_produce[current_key] # => ("Fruit", nil, "Fruit", nil...)

    counter += 1
  end

  selected_produce
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

puts general_select(produce, 'Fruit')     # => {"apple"=>"Fruit", "pear"=>"Fruit"}
puts general_select(produce, 'Vegetable') # => {"carrot"=>"Vegetable", "broccoli"=>"Vegetable"}
general_select(produce, 'Meat')      # => {}