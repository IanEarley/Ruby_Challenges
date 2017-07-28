#The computer has chosen a number between 1 and 25, enter your guess and the computer will tell you higher or lower until you guess it

numbers = (1..25).to_a

@computer = numbers.sample

puts "I'm thinking of a number between 1 and 25, what is it?"
def guessing
  @guess = gets.chomp.strip.to_i
  game
end

def game
  if @guess < @computer
    puts "Higher"
    guessing
  elsif @guess > @computer
    puts "Lower"
    guessing
  else puts "You got it!"
  end
end

guessing