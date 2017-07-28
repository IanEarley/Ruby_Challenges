# Have a user insert 10 numbers which are shoveled into an array.

#Add all the numbers in the array.

#Print out the answer in word form.
require 'to_words'

@numbers = []

INVALID_INPUT = /[\D]/

def contains_no_invalid_characters? input
  input =~ INVALID_INPUT
end

def set_digit_limit input
  if input <= 1000 && input >= 0
    @numbers << @number
    @count += 1
  else
    puts "Your number must be between 0 and1 1000."
  end
end

def get_number
  @count = 0
  until @count == 10 do
    puts @count == 0 ? "Please enter a whole number between 0 and 1000:" : "Please enter another number"
    choice = gets.chomp.strip
    unless  contains_no_invalid_characters? choice
      @number = choice.to_i
      set_digit_limit @number
    else     
      puts "That is not a valid number."
    end
  end
  add_numbers
end

def add_numbers
  @sum = @numbers.inject(0){|sum,x| sum + x }
  put_sum
end

def put_sum
  puts @sum.to_words
end

get_number