# Binary guessing game where cpu tells you a number is higher or lower from 1 - 25.

# Get input 1 - 25
# Have computer give me a random number
# Inform cpu if number is higher or lower
# Change the range accordingly, get a new guess
# -repeat until answer is given

require 'pry'

def guess_number
  @guess = @guessable.sample
end

def correct_guessable input
  case input
  when "h"
    @guessable.delete_if { |x| x >= @guess }
  when "l"
    @guessable.delete_if { |x| x <= @guess }
  else
    puts "TOAST"
  end
  pry
  game
end
  # input == "h" ? @guessable.each{ |x| x >= @guess ? @guessable.delete(x) : x } : @guessable.each{ |x| x <= @guess ? @guessable.delete(x) : x }
  # pry
  # game

def check_if_right input
  puts input == "y" ? (@correct = true; game) : input == "n" ? "ah, was I (h)igh or (l)ow?" : "please put y or n"
  response = gets.chomp.downcase.strip
  puts response == "h" ? (correct_guessable(response)) : response == "l" ? (correct_guessable(response)) :  ("Please put h or l"; check_if_right("n"))
end

def game
  unless @correct == true 
    guess_number
    puts "is it #{@guess}? (y) or (n)"
    @guesses += 1
    response = gets.chomp.strip.downcase
    check_if_right response
  else
    "Not bad eh? And in only #{@guesses} tries!"
    exit
  end
end

def setup
  @correct = false
  @guesses = 0
  @guessable = [*1..25]
  puts "Think of a number between 1 and 25, press enter when ready"
  gets
  game
end

setup

# until correct == true
#   response == "high" ? guess = rand(1..(previous_guess.to_i - 1)) : response == "low" ? guess = rand((previous_guess.to_i + 1)..25) : guess = rand(1..25)
#   pry
#   puts "is it #{guess}? (y) or (n)"
#   guesses += 1
#   response = gets.chomp.strip.downcase
#   puts response == "y" ? (correct = true; "Not bad eh? And in only #{guesses} tries!") : response == "n" ? "ah, was I high or low?" : "please put y or n"
#   previous_guess = guess
#   response = gets.chomp.strip.downcase
# end
# exit