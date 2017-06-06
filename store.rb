# Make a store!

# You must offer at least 3 items or services. (done)

# With several variation/subtypes each. (done)

# Ask the user what they would like to buy after displaying the menu.

# They must choose at least 2 items.

# Ask them if they would like anything else.

# Total the amount it will cost and add tax then display it to the user with a goodbye message.
require 'pry'


@inventory = {
  "Shirts" => {
    "Short-sleeve" => {"Panda" => 25.00, "Blue" => 20.00, "Red" => 20.00, "White" => 18.00},
    "Long-sleeve" => {"Panda" => 30.00, "Blue" => 25.00, "Red" => 25.00, "White" => 22.00},
    "Tank-top" => {"Panda" => 25.00, "Blue" => 20.00, "Red" => 20.00, "White" => 18.00}
  },

  "Pants" => {
    "Jeans" => {"Skinny" => 40.00, "Slim-fit" => 40.00, "Straight-leg" => 40.00},
    "Shorts" => {"Black" => 30.00, "Blue" => 30.00, "White" => 30.00}
  },

  "Shoes" => {
    "Tennis" => {"Nike" => 85.00, "Sketchers" => 65.00, "Adidas" => 85.00},
    "Skate" => {"Vans" => 40.00, "Converse" => 55.00}
  }
}

@total = 0




def choice
  puts "Welcome to Hurt Turpurc, we have a wide selection of:"
  @inventory.each do |key, value|
    puts key
  end
  puts "What would you like to see? (type nothing if done)"
  @selection = gets.chomp.downcase
  case @selection
  when "shirts"
    shirts
  when "pants"
    pants
  when "shoes"
    shoes
  when "nothing"
    puts "Ok!"
    check_total
  else
    puts "Sorry we don't carry that..."
    choice
  end
end


def shirts
  puts "We have the following styles of shirts:"
    @inventory.values[0].each do |style, colors|
      puts style
    end

  puts "Which would you like to see?"
  @selection = gets.chomp.downcase
  case @selection
  when "short-sleeve"
    puts "We have the following colors and logos:"
    options = @inventory.dig "Shirts", "Short-sleeve"
    options.each do |color, cost|
      puts "We have #{color} for $#{cost}"
    end
    puts "Which would you like?"
    @selection = gets.chomp.capitalize
    if @selection == "Panda" || @selection == "Blue" || @selection == "Red" || @selection == "White"
      @total += options[@selection].to_i
      finish_shopping
    else
      puts "We don't have that, sorry..."
      shirts
    end

  when "long-sleeve"
    puts "We have the following colors and logos:"
    options = @inventory.dig "Shirts", "Long-sleeve"
    options.each do |color, cost|
      puts "We have #{color} for $#{cost}"
    end
    puts "Which would you like?"
    @selection = gets.chomp.capitalize
    if @selection == "Panda" || @selection == "Blue" || @selection == "Red" || @selection == "White"
      @total += options[@selection].to_i
      finish_shopping
    else
      puts "We don't have that, sorry..."
      shirts
    end


  when "tank-top"
    puts "We have the following colors and logos:"
    options = @inventory.dig "Shirts", "Tank-top"
    options.each do |color, cost|
      puts "We have #{color} for $#{cost}"
    end
    puts "Which would you like?"
    @selection = gets.chomp.capitalize
    if @selection == "Panda" || @selection == "Blue" || @selection == "Red" || @selection == "White"
      @total += options[@selection].to_i
      finish_shopping
    else
      puts "We don't have that, sorry..."
      shirts
    end

  when "none"
    puts "No worries!"
    choice

  else
    puts "We don't carry that style..."
    shirts
  end
end

def pants
  puts "We have the following styles of Pants:"
    @inventory.values[1].each do |style, colors|
      puts style
    end
  puts "Which would you like to see?"
  @selection = gets.chomp.downcase
  case @selection
  when "jeans"
    puts "We have the following colors and logos:"
    options = @inventory.dig "Pants", "Jeans"
    options.each do |color, cost|
      puts "We have #{color} for $#{cost}"
    end
    puts "Which would you like?"
    @selection = gets.chomp.capitalize
    if @selection == "Skinny" || @selection == "Slim-fit" || @selection == "Straight-leg"
      @total += options[@selection].to_i
      finish_shopping
    else
      puts "We don't have that, sorry..."
      pants
    end

  when "shorts"
    puts "We have the following colors and logos:"
    options = @inventory.dig "Pants", "Shorts"
    options.each do |color, cost|
      puts "We have #{color} for $#{cost}"
    end
    puts "Which would you like?"
    @selection = gets.chomp.capitalize
    if @selection == "Black" || @selection == "Blue" || @selection == "White"
      @total += options[@selection].to_i
      finish_shopping
    else
      puts "We don't have that, sorry..."
      pants
    end

  when "none"
    puts "No worries!"
    choice

  else
    puts "We don't carry that style..."
    pants
  end
end

def shoes
  puts "We have the following styles of Shoes:"
    @inventory.values[2].each do |style, colors|
      puts style
    end
  puts "Which would you like to see?"
  @selection = gets.chomp.downcase
  case @selection
  when "tennis"
    puts "We have the following brands:"
    options = @inventory.dig "Shoes", "Tennis"
    options.each do |color, cost|
      puts "We have #{color} for $#{cost}"
    end
    puts "Which would you like?"
    @selection = gets.chomp.capitalize
    if @selection == "Nike" || @selection == "Sketchers" || @selection == "Adidas"
      @total += options[@selection].to_i
      finish_shopping
    else
      puts "We don't have that, sorry..."
      shoes
    end
      
  when "skate"
    puts "We have the following brands:"
    options = @inventory.dig "Shoes", "Skate"
    options.each do |color, cost|
      puts "We have #{color} for $#{cost}"
    end
    puts "Which would you like?"
    @selection = gets.chomp.capitalize
    if @selection == "Vans" || @selection == "Converse"
      @total += options[@selection].to_i
      finish_shopping
    else
      puts "We don't have that, sorry..."
      shoes
    end
  when "none"
    puts "No worries!"
    choice
  else
    puts "We don't carry that style..."
    shoes
  end
end


def check_total
  if @total == 0
    puts "Nothing today? No worries, come back any time!"
  else
    puts "Let me just total this up for you..."
    sleep(2)
    add_tax
  end
end

def payment_method
  choice = gets.chomp.downcase
  case choice
  when "cash"
    puts "Thank you very much!"
    puts "Have a nice day!"
    exit
  when "card"
    puts "Please enter your card number: "
    card_number = gets.chomp.to_i
    puts "please enter the expiration date: "
    exp_date = gets.chomp
    puts "and the cvc code...... Are you seriously still entering your info???"
  else
    puts "Cash or card?"
    payment_method
  end
end

def add_tax
  tax = @total * 0.06
  grand_total = @total + tax
  puts "Your total is $#{grand_total} after tax will that be cash or card?"
  payment_method
end

def finish_shopping
  puts "The #{@selection}? Got it."
  puts "Ok, so your total is $#{@total} so far, anything else? (y) yes (n) no"
  yes_no = gets.chomp.downcase
  if yes_no == "y" || yes_no == "yes"
    choice
  elsif yes_no == "n" || yes_no == "no"
    check_total
  else
    puts "Is that a yes or no?"
    finish_shopping
  end
end

choice