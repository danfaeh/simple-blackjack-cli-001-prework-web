def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp 
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  x = deal_card + deal_card
  display_card_total(x)
  x
end

def hit?(total=0)
  prompt_user
  choice = get_user_input
    if choice == 'h'
      total = total + deal_card
    end
  total
end

def invalid_command
  # code invalid_command here
end

def runner
  welcome
  x = initial_round

    until x > 21
    x = hit?(x)
    display_card_total(x)
    end

  end_game(x)
end