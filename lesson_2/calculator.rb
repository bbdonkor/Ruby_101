LANGUAGE = 'en'
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message, lang='en')
  MESSAGES[lang][message]
end

num = ''
input = ''

# you could move the code around a bit and modify the prompt method

def prompt(key)
  message = messages(key, LANGUAGE)   # make sure the "messages" method is declared above this line
  Kernel.puts("=> #{message}")
end
# now you can just do:
# prompt('welcome')

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

 # If we wanted to add code after the case statement, 
 # we would need to save the return value of the case 
 # into a variable, then make sure to return that 
 # variable, or that variable must be the last line in the method.

 def operation_to_message(operation)
  word = case operation
           when '1'
             'Adding'
           when '2'
             'Subtracting'
           when '3'
             'Multiplying'
           when '4'
             'Dividing'
         end

  x = "A random line of code"

  word
end

prompt(MESSAGES['welcome'])

name = ''

loop do
  name = Kernel.gets().chomp

  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hello #{name}!")

loop do # main loop
  input_1 = ''
  input_2 = ''

  loop do 
    prompt(MESSAGES['f_number'])
    input_1 = Kernel.gets().chomp()

    if number?(input_1)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  loop do
    prompt(MESSAGES['second_number'])
    input_2 = Kernel.gets().chomp()

    if number?(input_2)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  Kernel.puts(input_1 + " " + input_2)

  operator_prompt = <<-MSG
    What operation would you like to perform?
    --1 Add
    --2 Subtract
    --3 Multiply
    --4 Divide
  MSG

  prompt(operator_prompt)
  
  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['multiple_choice'])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
    when '1'
      input_1.to_i() + input_2.to_i()
    when '2'
      input_1.to_i - input_2.to_i
    when '3'
      input_1.to_i * input_2.to_i
    when '4'
      input_1.to_f / input_2.to_f
  end



  prompt("The result is #{result}")

  prompt(MESSAGES['new_calc'])
  answer = Kernel.gets().chomp
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['farewell'])