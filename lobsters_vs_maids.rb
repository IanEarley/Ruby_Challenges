#The year 1776 and the Lobster Backs and Minute Maids meet in a field to battle.

#The groups take turns shooting at each other.

#Each person in each group has a 50% chance of being hit and dying.

#How many rounds does it take to determine a winning group.

#10 v 10

require 'faker'
require 'pry'

@lobsters = []
@maids = []
@rounds = 0
@attacks = ["Hit", "Miss"]
@teams = ["Lobsters", "Maids"]

def groups
  10.times do
    @lobsters << Faker::Pokemon.name
    @maids << Faker::Zelda.character
  end
end

def lobster_attacks
  unless @lobsters.size == 0
    puts "#{@lobsters.sample} aims their gun and fires!"
    attack = @attacks.sample
    puts "#{attack}!"
    if attack == "Hit"
      casualty = @maids.sample
      @maids.delete(casualty)
      puts "#{casualty} was hit and has fallen in combat!"
    else
      puts "The Minute Maids laugh at the clumsy Lobster Back!"
    end
  end
end

def maid_attacks
  unless @maids.size == 0
    puts "#{@maids.sample} throws a sharpened feather duster!"
    attack = @attacks.sample
    puts "#{attack}!"
    if attack == "Hit"
      casualty = @lobsters.sample
      @lobsters.delete(casualty)
      puts "#{casualty} was impaled with feathery death!"
    else
     puts "The Lobster Backs click their claws in silent jeering!"
    end
  end
end

def initiative
  groups
  first = @teams.sample
  if first == "Lobsters"
    puts "The Lobster Backs get in the first shot!"
    lob_first
  else
    puts "The Minute Maids got the drop on the Lobster Backs!"
    maid_first
  end
end

def check_winner
  sleep (1)
  puts "After #{@rounds} minutes of vicious combat..."
  sleep (1)
  puts "the smoke clears..."
  sleep (1)
  # binding.pry
  if @lobsters.size == 0 && @maids.size > 1
    puts "only #{@maids.size} remain..."
    sleep (1)
    puts "The shattered shells of the lobster forces litter the ground at their feet..."
    sleep (1)
    puts "The remaining Maids look to the sky... and smile at their victory, the sun feels wonderful of their faces..."
  elsif @lobsters.size == 0 && @maids.size == 1
    puts "only #{@maids.size} remains..."
    sleep (1)
    puts "The shattered shells of the lobster forces litter the ground at their feet but so too do the bodies of her sisters..."
    sleep (1)
    puts "The last of the maids looks to the sky... holding back tears. The sun feels warm on her face, but the loss of her sisters weighs heavily on her heart."
  elsif @maids.size == 0 && @lobsters.size > 1
    puts "only #{@lobsters.size} remain..."
    sleep (1)
    puts "The broken dusters and the bloody tatters of the maids span the field of battle..."
    sleep (1)
    puts "The remaining Lobster Backs click their claws in a silent victory, they have seized the day..."
  elsif @maids.size == 0 && @lobsters.size == 1
    puts "only #{@lobsters.size} remains..."
    sleep (1)
    puts "The broken dusters and the bloody tatters of the maids along with the shattered shells of his comrades span the field of battle..."
    sleep (1)
    puts "The remaining Lobster Back clicks their claws in silent reverence, they have seized the day... but at what cost?"
  else
    puts "TOAST!"
  end
  fight_again
end

def fight_again
    puts "Perhaps the next battle will be different... go again? (y) yes, (n) no"
  choice = gets.chomp.downcase.strip
  if choice == "yes" || choice == "y"
    initiative
  elsif choice == "no" || choice == "n"
    puts "That's enough war for one day..."
    exit
  else
    puts "please enter yes or no"
    fight_again
  end
end

def lob_first
  # binding.pry
  until @lobsters.size == 0 || @maids.size == 0
    lobster_attacks
    gets
    maid_attacks
    @rounds += 1
    gets
  end
  check_winner
end

def maid_first
  # binding.pry
  until @lobsters.size == 0 || @maids.size == 0
    maid_attacks
    gets
    lobster_attacks
    gets
    @rounds += 1
  end
  check_winner
end

initiative