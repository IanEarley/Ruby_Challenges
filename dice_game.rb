#Create a game where you roll 1 die and the computer rolls 1 die and you see whose is greater.

#On a tie, roll again.

#Play to 5 victories.

#ask to play again.

@p_vic = 0
@c_vic = 0

def dice_rolls
 
 player = rand(1..6)
 computer = rand(1..6)

 until @p_vic == 5 || @c_vic == 5 do
  if player == computer
    puts "#{player} vs #{computer}"
    puts "Tie!"
    dice_rolls
  elsif player > computer
    puts "#{player} vs #{computer}" 
    puts "One for you..." 
    @p_vic += 1
    puts "That makes #{@p_vic}"
    dice_rolls
  elsif computer > player 
    puts "#{player} vs #{computer}"
    puts "One for me..."
    @c_vic += 1
    puts "That makes #{@c_vic}"
    dice_rolls
  else
    puts "ERROR!"
  end
 end
 if @p_vic == 5
  puts "You win!"
 else
   puts "I win!"
 end
 puts "play again? (Y) yes (N) no"
 choice = gets.chomp
  if choice == "y" || choice == "yes"
    puts "ok!"
    @p_vic = 0
    @c_vic = 0
    dice_rolls
    return
  else
    exit
  end
end

dice_rolls