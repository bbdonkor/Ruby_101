words = "the flintstones rock"

# - Launch School solution

# p words.split.map { |word| word.capitalize }.join(' ')


# --------------------------------- My solution


def capitalized_sentence(string)

result = ""

chars = string.split

  chars.each do |word| 
    result << word.capitalize! + ' '
  end

  result
end
# 
puts capitalized_sentence(words)