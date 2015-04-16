system("cls")
system("clear")

puts "Welcome to Rock, Paper, Scissors!"

def play_again
  puts "Play again? (Y/N)"
  play_again = gets.chomp.downcase

  if play_again == 'y'
    system("cls")
    system("clear")
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
  win_scenarios_arr = []

  puts "Choose one: (R/P/S)"
  player_choice = gets.chomp.downcase
  win_scenarios_arr << player_choice

  choices = ["p", "r", "s"]
  computer_choice = choices.sample
  win_scenarios_arr << computer_choice

# This case is just to neatly print the computer choice later. DOes not affect
# the array that controls the logic.
  case computer_choice
  when 'r'
    computer_choice = "Rock"
  when 'p'
    computer_choice = "Paper"
  when 's'
    computer_choice = "Scissors"
  end

  case player_choice
  when 'r'
    puts "You chose Rock and computer picked #{computer_choice}"
  when 'p'
    puts "You chose Paper and computer picked #{computer_choice}"
  when 's'
    puts "You chose Scissors and computer picked #{computer_choice}"
  end

  if win_scenarios_arr.include?('r') && win_scenarios_arr.include?('p')
    puts "Paper wraps Rock!"
    if win_scenarios_arr[0] == 'p'
      you_won
    else
      computer_won
    end
  elsif win_scenarios_arr.include?('r') && win_scenarios_arr.include?('s')
    puts "Rock smashes Scissors!"
    if win_scenarios_arr[0] == 'r'
      you_won
    else
      computer_won
    end
  elsif win_scenarios_arr.include?('s') && win_scenarios_arr.include?('p')
    puts "Scissors cut Paper!"
    if win_scenarios_arr[0] == 's'
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