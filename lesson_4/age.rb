puts "Enter a name for the age: "
name = gets.chomp()

def greet_age(name="Teddy", age)

  age = rand(20..200)

  puts "#{name} is #{age} years old"
end


greet_age(name)