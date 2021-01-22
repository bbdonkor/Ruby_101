def prompt(message)
  Kernel.puts("=> #{message}")
end



prompt("Welcome to Mortgage Calculator! Enter your name here:")

name = ''
# Refactor so numbers can't be used in name
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Greetings #{name}!, let's get started.")

# main loopp

loop do
  loan_amount = ''
  yearly_percentage = ''
  loan_duration_y = ''

  loop do
    prompt("What is the amount of the loan?:")
    loan_amount = Kernel.gets().chomp()

    if loan_amount.empty?() || loan_amount.to_f() > 0
      break 
    else
      prompt("The typed amount contains invalid characters")
    end
  end

  loop do
    prompt("What is the Annual Percentage Rate (APR):")
    prompt("(Example: 7.5 for 7.5% or 5 for 5%)")
    yearly_percentage = Kernel.gets().chomp()

    if yearly_percentage.empty?() || yearly_percentage.to_f() > 0
      break
    else
      prompt("This is not a valid percentage")
    end
  end

  # Refactor loan duration

  loop do
    prompt("What is the duration of the loan, in years.")
    loan_duration_y = Kernel.gets().chomp()

    if loan_duration_y.empty?() || loan_duration_y.to_f() > 0
      break
    else
      prompt("The given duration is not valid")
    end
  end

  prompt("Your current loan states the following: ")

  puts "Loan amount" + "=>" + " " + loan_amount + " " + "$"
  puts "Annual Percentage Rate (APR)" + "=>" + " " + yearly_percentage + " " + "%"
  puts "Loan duration in years" + "=>" + " " + loan_duration_y + " " + "years"

  annual_interest_rate = yearly_percentage.to_f() / 100
  monthly_interest_rate = annual_interest_rate / 12
  loan_duration_m = loan_duration_y.to_i() * 12

  monthly_payment = loan_amount.to_i() *
                        (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_m)))

  prompt "The monthly payment is %0.2f" % [monthly_payment] + " $"

  prompt("Do you want to perform another mortgage calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using Mortgage Calculator! Goodbye..")
