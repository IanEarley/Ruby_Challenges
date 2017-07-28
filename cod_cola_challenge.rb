@stats = { speed: 10, sprint: 20, sprint_duration: 10, rof: 100,
health: 2, reload: 4, power: 10}

@points = 10000

@available_drinks = ["Stamina-Up", "Double Tap", "Juggernog", "Speed Cola", "Pack-A-Punch"]
@purchased = []

def speed_cola
  puts "Would you like to purchase a Speed Cola for 3,000 points? yes (y), no (n)"
  choice = gets.chomp
  if (choice == "yes" || choice == "y") && @points >= 3000
    @purchased << @available_drinks.delete("Speed Cola")
    @points -= 3000
    @stats[:reload] /= 2
    puts "Your reload speed is now #{@stats[:reload]} and you have #{@points} remaining."
    choosing_cola
  elsif (choice == "no" || choice == "n")
    choosing_cola
  elsif @points < 3000
    puts "You do not have enough points..."
    choosing_cola
  else
    puts "Please enter yes or no."
    speed_cola
  end
end

def juggernog
  puts "Would you like to purchase a Juggernog for 2,500 points? yes (y), no (n)"
  choice = gets.chomp
  if (choice == "yes" || choice == "y") && @points >= 2500
    @purchased << @available_drinks.delete("Juggernog")
    @points -= 2500
    @stats[:health] *= 2
    puts "Your health is now #{@stats[:health]} and you have #{@points} remaining."
    choosing_cola
  elsif (choice == "no" || choice == "n")
    choosing_cola
  elsif @points < 2500
    puts "You do not have enough points..."
    choosing_cola
  else
    puts "Please enter yes or no."
    juggernog
  end
end

def double_tap
  puts "Would you like to purchase a Double Tap for 2,000 points? yes (y), no (n)"
  choice = gets.chomp
  if (choice == "yes" || choice == "y") && @points >= 2000
    @purchased << @available_drinks.delete("Double Tap")
    @points -= 2000
    @stats[:rof] *= 2
    puts "Your rate of fire is now #{@stats[:rof]} and you have #{@points} remaining."
    choosing_cola
  elsif (choice == "no" || choice == "n")
    choosing_cola
  elsif @points < 2000
    puts "You do not have enough points..."
    choosing_cola
  else
    puts "Please enter yes or no."
    rof
  end
end

def pack_a_punch
  puts "Would you like to purchase a Pack-A-Punch for 5000 points? yes (y), no (n)"
  choice = gets.chomp
  if (choice == "yes" || choice == "y") && @points >= 5000
    @purchased << @available_drinks.delete("Pack-A-Punch")
    @points -= 5000
    @stats[:power] *= 2
    puts "Your damage power is now #{@stats[:power]} and you have #{@points} remaining."
    choosing_cola
  elsif (choice == "no" || choice == "n")
    choosing_cola
  elsif @points < 5000
    puts "You do not have enough points..."
    choosing_cola
  else
    puts "Please enter yes or no."
    pack_a_punch
  end
end

def stamina_up
  puts "Would you like to purchase a Stamina-Up for 2,000 points? yes (y), no (n)"
  choice = gets.chomp
  if (choice == "yes" || choice == "y") && @points >= 2000
    @purchased << @available_drinks.delete("Stamina-Up")
    @points -= 2000
    @stats[:sprint_duration] *= 2
    puts "Your sprint duration is now #{@stats[:sprint_duration]} and you have #{@points} remaining."
    choosing_cola 
  elsif (choice == "no" || choice == "n")
    choosing_cola
  elsif @points < 2000
    puts "You do not have enough points..."
    choosing_cola
  else
    puts "Please enter yes or no."
    stamina_up
  end
end

def choosing_cola
  unless @available_drinks.size == 0
    puts "Which cola do you want? (type done to exit)"
    puts "Here is the list of available drinks:"
    puts @available_drinks
    choice = gets.chomp.strip.downcase
    case choice
      when "stamina-up"
        unless @purchased.include?("Stamina-Up")
          stamina_up
        else
          puts "You have already purchased a Stamina-Up."
          choosing_cola
        end
      when "double tap"
        unless @purchased.include?("Double Tap")
          double_tap
        else
          puts "You have already purchased a Double tap drink."
          choosing_cola
        end
      when "juggernog"
        unless @purchased.include?("Juggernog")
          juggernog
        else
          puts "You have already purchased a Juggernog drink."
          choosing_cola
        end
      when "speed cola"
        unless @purchased.include?("Speed Cola")
          speed_cola
        else
          puts "You have already purchased a Speed Cola."
          choosing_cola
        end
      when "pack-a-punch"
        unless @purchased.include?("Pack-A-Punch")
          pack_a_punch
        else
          puts "You have already purchased a Pack-A-Punch."
        end
      when "done"
        puts "Back to zombie killin!"
        exit
      else
        puts "Please choose a cola from the list"
        choosing_cola
    end
  else
    puts "You have purchased all available drinks, now get out there and kick some zombie ass!"
    exit
  end
end

puts "You have #{@points} points"
choosing_cola