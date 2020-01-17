def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  Random.new.rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = 0
  2.times {
    total += deal_card
  }
  display_card_total(total)
  total
end

def hit?(total)
  loop do
    prompt_user
    resp = get_user_input
    if resp == 'h'
      total += deal_card
      return total
    elsif resp == 's'
      return total
    else
      invalid_command
    end
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  total = 0
  welcome
  loop do
  total += initial_round
end
    
