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
end

def question_1
  p "For $5,000, What is the capital of the United States?" 
  answers = "(a) Canada (b) London (c) Washington D.C. (d) Texas"
  p answers
  
end

def question_2
 p "For $45,000, What is the airspeed velocity of an unladen swallow?"
 p "Is it (a) 14Hz (b) .13 St (c) 9.5m/s (d) What the hell are you talking about?"
end

def question_3
 p "For $350,000, On March 1st, 1962, Sarah Goode, Sara Osborne, and one other woman was arrested for witchcraft in Salem, Massachussets. Who was this other woman?"
 p "Was it (a) Sarah Black (b) Tituba (c) Ozzy Osborne (d) Elizabeth Turner"
end

def question_4
 p "For $600,000, The renowned activist, Martin Luther King Jr. was an important man in American history. However, this was not his original name. What was the name given to him at his birth in 1929?"
 p "Was it (a) Michael King Jr. (b) Martin King Jr. (c) Charles King Jr. (d) Leonard King Jr. "
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
    answer = "a"
    @question.delete(question)
    puts "What is your answer?"
    choice = gets.chomp.downcase
      if choice == answer
        puts "Correct!"
      binding.pry
        case question
          when Method: question_1
            @prize += 5000
            binding.pry
          when Method: question_2
            @prize += 45000
          when Method: question_3
            @prize += 350000
          when Method: question_4
            @prize += 600000
        end
        puts "You've won $#{@prize} so far!"
      else
        puts "Sorry, better luck next time!"
        exit
      end
      binding.pry
  end
end

game