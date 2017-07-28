def number_select
  @number = rand(50)
  guessing
end

def guessing
  puts "Guess a number between 1 and 50:"
  @guess = gets.chomp.strip.to_i
  check
end

def check
  if @guess == @number
    puts "You got it!"
    puts "play again?"
    choice = gets.chomp.downcase
    case choice
    when "yes"
      number_select
    when "y"
      number_select
    else
      exit
    end      
  elsif @guess < @number
    puts "Higher"
    guessing
  elsif @guess > @number
    puts "Lower"
    guessing
  else
    puts "Toast"
  end
end

number_select