# Who wants to be a millionaire game
# Make a 4 question quiz and do it in the show format

require 'pry'

@answer = []
@prize = 0

def game_start
  puts "Who wants to be a Millionaire?"
  puts "Let's meet our contestant!"
  puts "What is your name?"
  @player = gets.chomp
  puts "Ok #{@player}, let's play!"
  sleep(2)
  system "clear"
end

def question_1
  p "For $5,000, What is the capital of the United States?" 
  p "(a) Canada (b) London (c) Washington D.C. (d) Texas"
  p "What is your answer?"
  choice = gets.chomp.downcase
  if choice == "c"
    puts "Correct!"
    @prize += 5000
    puts "You've won $#{@prize} so far!"
    sleep(2)
    system "clear"
  else
    puts "Sorry, better luck next time!"
    exit
  end
end

def question_2
 p "For $45,000, What is the airspeed velocity of an unladen swallow?"
 p "Is it (a) 14Hz (b) .13 St (c) 9.5m/s (d) What the hell are you talking about?"
 p "What is your answer?"
  choice = gets.chomp.downcase
  if choice == "c"
    puts "Correct!"
    @prize += 45000
    puts "You've won $#{@prize} so far!"
    sleep(2)
    system "clear"
  else
    puts "Sorry, better luck next time!"
    exit
  end
end

def question_3
 p "For $350,000, On March 1st, 1962, Sarah Goode, Sara Osborne, and one other woman was arrested for witchcraft in Salem, Massachussets. Who was this other woman?"
 p "Was it (a) Sarah Black (b) Tituba (c) Ozzy Osborne (d) Elizabeth Turner"
 p "What is your answer?"
  choice = gets.chomp.downcase
  if choice == "b"
    puts "Correct!"
    @prize += 350000
    puts "You've won $#{@prize} so far!"
    sleep(2)
    system "clear"
  else
    puts "Sorry, better luck next time!"
    exit
  end
end

def question_4
 p "For $600,000, The renowned activist, Martin Luther King Jr. was an important man in American history. However, this was not his original name. What was the name given to him at his birth in 1929?"
 p "Was it (a) Michael King Jr. (b) Martin King Jr. (c) Charles King Jr. (d) Leonard King Jr. "
 p "What is your answer?"
  choice = gets.chomp.downcase
  if choice == "a"
    puts "Correct!"
    @prize += 600000
    puts "You've won $#{@prize} so far!"
    sleep(2)
    system "clear"
  else
    puts "Sorry, better luck next time!"
    exit
  end
end

@question = [method(:question_1), method(:question_2), method(:question_3), method(:question_4)]

def game
  until @question.length == 0 do
    if @question.length == 4
      puts "Ok! Your first question!"
    else
      puts "Ok! Next question!"
    end
    question = @question.sample
    question.call
    @question.delete(question)
  end
end

def win
  puts "Congratulations! You got every question right! You get $#{@prize}!"
end

def play_again
  puts "Play again?"
  choice = gets.chomp.downcase
  if choice == "y" || choice == "yes"
    puts "Let's play again!"
    game_start
    game
    win
    play_again
  elsif choice == "n" || choice == "no"
    puts "Thanks for playing!"
    sleep(1)
    system "clear"
  else
    puts "please choose yes or no"
    play_again
  end
end

game_start
game
win
play_again