# DISPLAY_CHOICES = %w((r)rock, (p)paper, (s)scissors, (sp)spock, (l)lizard)
VALID_CHOICES = %w(rock paper scissors spock lizzard)
# VERIFY_CHOICE = %w(r p s sp l)

# def verify_choice(game)
#   rock == r
#   paper == p
#   sicssors == s
#   spock == sp
#   lizard == l
# end

def prompt(message)
  Kernel.puts("=> #{message}")
end

scoreboard_player = ''
scoreboard_computer = ''
display_score = ''
player = ''
computer = ''

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
      (first == 'paper' && second == 'rock') ||
      (first == 'scissors' && second == 'paper') || 
      (first == 'scissors' && second == 'lizard') ||
      (first == 'paper' && second == 'spock') ||
      (first == 'rock' && second == 'lizard') ||
      (first == 'lizard' && second == 'paper') ||
      (first == 'lizard' && second == 'spock') ||
      (first == 'spock' && second == 'rock') ||
      (first == 'spock' && second == 'scissors')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("You lost..")
  else
    prompt("It's a tie!")
  end
end

def score(player, computer)
  if win?(player, computer)
    scoreboard_player += 1
  elsif win?(computer, player)
    scoreboard_computer += 1
  end
end

# Unable to access Scoreboard player in the method below, opposed to the metod above
# Find out why you cannot access it below, to display the score

def display_score(player, computer)
  prompt("Your score is " + scoreboard_player + " vs the computer score #{scoreboard_computer}")
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(' ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That is not a valid choice.")
    end
  end
  

  computer_choice = VALID_CHOICES.sample


  
  display_results(choice, computer_choice)

  prompt("You chose: #{choice}; Computer chose #{computer_choice}")

  score(player, computer)
  display_score(player, computer)

  # prompt("Do you want to play again? (Y/N)")
  # answer = Kernel.gets().chomp()
  # break unless answer.downcase().start_with?('y')

  prompt("The Game continues till either one reaches 5.")
  break unless scoreboard_player || scoreboard_computer > 5
end


prompt("Thank you for playing. Good bye! ")