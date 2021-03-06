statement = "The Flintstones Rock"

# - Solution 1
# p statement.split('').tally


# - Solution 2 

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
letter_frequency = statement.scan(letter).count
result[letter] = letter_frequency if letter_frequency > 0
end

p result