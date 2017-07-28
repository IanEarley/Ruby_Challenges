#Ask the user for a number 1 to 25

#Then ask them for add or multiply

#Add or multiply all the numbers from one up to the number



def number
  puts "Enter a number between 1 and 25"
  @chosen_number = gets.chomp.strip.to_i
  if @chosen_number > 0 && @chosen_number < 26
    add_multiply
  else
    puts "That is not a valid entry."
    number
  end
end

def multiply
  @total = 1
  (1..@chosen_number).each { |x| @total *= x }
  puts "All numbers up to #{@chosen_number} multiplied together equals: #{@total}"
  again
end

def addition
  @sum = 0
  (1..@chosen_number).each { |x| @sum += x }
  puts "All numbers up to #{@chosen_number} added together equals: #{@sum}"
  again
end

def add_multiply
  puts "Pick Add or Multiply:"
  choice = gets.chomp.strip.downcase
  case choice
  when "add"
    addition
  when "multiply"
    multiply
  else
    puts "Please choose add or multiply"
    add_multiply
  end
end

def again
  puts "Would you like to choose a new number? (y) yes, (n) no"
  choice = gets.chomp.strip.downcase
  if choice == "yes" || choice == "y"
    number
    add_multiply
    again
  else
    puts "See you later then."
    exit
  end
end

number