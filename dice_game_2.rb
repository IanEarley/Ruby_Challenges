@p_vic = 0
@c_vic = 0

puts "Let's roll some dragons!"

def game_start
  puts "what shall we play to? (enter any number)"
  @play_to = gets.chomp.to_i.floor
  if @play_to.is_a? Integer
    return
  else
    puts "please enter a number."
    game_start 
  end
end

def dice_count
  puts "How many dragons do you want to roll? (enter any number)"
  @dice_count = gets.chomp.to_i.floor
  if @dice_count.is_a? Integer 
    return
  else
    puts "please enter a number."
    dice_count
  end
end

def random_generator
  rand (1..6)
end

def dice_rolls
 
 player = @dice_count.times.collect {random_generator}.inject(0){|sum, x| sum + x}
 computer = @dice_count.times.collect {random_generator}.inject(0){|sum, x| sum + x}
 until @p_vic == @play_to || @c_vic == @play_to do
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
 if @p_vic == @play_to
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
    @play_to = 0
    @dice_count = 0
    game_start
    dice_count
    dice_rolls
    return
  else
    exit
  end
end

game_start
dice_count
dice_rolls