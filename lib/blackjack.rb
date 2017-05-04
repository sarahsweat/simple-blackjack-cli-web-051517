def welcome
  # code #welcome here
  puts("Welcome to the Blackjack Table")
end

def deal_card
  # code #deal_card here
  1 + rand(11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"

end

def prompt_user
  # code #prompt_user here
  puts"Type 'h' to hit or 's' to stay"

end

def get_user_input
  # code #get_user_input here
  next_turn = gets.chomp
end

def end_game(arg1)
  # code #end_game here
  puts "Sorry, you hit #{arg1}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  puts "Your cards add up to #{card1 + card2}"
  card1 + card2
  # code #initial_round here
end

def hit?(arg1)

  prompt_user
  next_turn = get_user_input
  if next_turn == "h"
    arg2 = deal_card
    arg1 + arg2
  else
    arg1
  end
  # code hit? here
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here

  welcome
  total = initial_round
  until total >= 22
  total = hit?(total)
  display_card_total(total)
end
  end_game(total)
end
