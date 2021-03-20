def select_letter(sentence, letter)
  selected_letters = ""
  counter = 0

  loop do
    break if counter == sentence.size

    current_letter = sentence[counter]

    if current_letter == letter
    selected_letters << current_letter
    end

    counter +=1
  end
  selected_letters
end 


question = 'How many times does a particular character appear in this sentence?'
puts select_letter(question, 'a').size # => "aaaaaaaa"
puts select_letter(question, 't').size # => "ttttt"
puts select_letter(question, 'z') # => ""