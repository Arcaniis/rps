def system_clear
  system("cls")
  system("clear")
end

system_clear

puts "Welcome to Rock, Paper, Scissors!"

def play_again
  puts "Play again? (Y/N)"
  play_again = gets.chomp.downcase

  if play_again == 'y'
    system_clear
    play
  end
end

def you_won
  puts "You won!"
  play_again
end

def computer_won
  puts "Computer won!"
  play_again
end

def play
  choices = []

  puts "Choose one: (R/P/S)"
  choices << gets.chomp.downcase

# Computer's pick
  possible_choices = ["p", "r", "s"]
  choices << possible_choices.sample

# This case is just to neatly print the computer choice later. Does not affect
# the array that controls the logic.
  case choices[1]
  when 'r' then computer_choice = "Rock"
  when 'p' then computer_choice = "Paper"
  when 's' then computer_choice = "Scissors"
  end

  case choices[0]
  when 'r' then puts "You chose Rock and computer picked #{computer_choice}"
  when 'p' then puts "You chose Paper and computer picked #{computer_choice}"
  when 's' then puts "You chose Scissors and computer picked #{computer_choice}"
  end

  if choices.include?('r') && choices.include?('p')
    puts "Paper wraps Rock!"
    if choices[0] == 'p'
      you_won
    else
      computer_won
    end
  elsif choices.include?('r') && choices.include?('s')
    puts "Rock smashes Scissors!"
    if choices[0] == 'r'
      you_won
    else
      computer_won
    end
  elsif choices.include?('s') && choices.include?('p')
    puts "Scissors cut Paper!"
    if choices[0] == 's'
      you_won
    else
      computer_won
    end
  else
    puts "It's a tie."
    play_again
  end
end

play

# Did this without watching solution video so I apologize if this is way off
# what others were expecting to see. Seems functional though. Please leave
# comments and suggestions. Thanks :)
