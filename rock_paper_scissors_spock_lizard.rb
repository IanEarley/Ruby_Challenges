# Rock beats Lizard and Paper
# Spock beats rock and scissors
# Scissors beats Paper and Lizard
# Lizard beats Spock and Paper
# Paper beats rock and Spock

def game
  puts "Time to play rock, paper, scissors, lizard, spock!"
  puts "Choose your move!"
  get_input
  puts "play again? (y)es (n)o"
  choice = gets.chomp.strip.downcase
  exit unless choice.include?("y")
  game
end

def get_input
  options = ["rock", "paper", "scissors", "spock", "lizard"]
  comp_choice = options.sample
  player_choice = gets.chomp.strip.downcase
  get_input unless options.include?(player_choice)
  puts comp_choice == player_choice ? "We both pick #{comp_choice}, it's a tie!" : compare(player_choice, comp_choice)
end

def compare input, computer
  case input
  when "rock"
    computer == "paper" || computer == "spock" ? "I chose #{computer} you lose!" : "I chose #{computer} you win!"
  when "paper"
    computer == "scissors" || computer == "lizard" ? "I chose #{computer} you lose!" : "I chose #{computer} you win!"
  when "scissors"
    computer == "rock" || computer == "spock" ? "I chose #{computer} you lose!" : "I chose #{computer} you win!"
  when "spock"
    computer == "lizard" || computer == "paper" ? "I chose #{computer} you lose!" : "I chose #{computer} you win!"
  when "lizard"
    computer == "rock" || computer == "scissors" ? "I chose #{computer} you lose!" : "I chose #{computer} you win!"
  end
end

game