#You are that one race guy that sees who finished fastest as runners finish.

#Write a program that when you enter a new race finish time it updates a top 5 finishers list.

require 'faker'

def times
@racers = [[Faker::Pokemon.name, rand(4.10..16.00)], [Faker::Pokemon.name, rand(4.10..16.00)], [Faker::Pokemon.name, rand(4.10..16.00)], [Faker::Pokemon.name, rand(4.10..16.00)], [Faker::Pokemon.name, rand(4.10..16.00)], [Faker::Pokemon.name, rand(4.10..16.00)], [Faker::Pokemon.name, rand(4.10..16.00)], [Faker::Pokemon.name, rand(4.10..16.00)], [Faker::Pokemon.name, rand(4.10..16.00)], [Faker::Pokemon.name, rand(4.10..16.00)]]
end

def gen_racers
  times
  @racers.each do 
  @times = Hash[@racers.map {|key, value| [key, value.round(2)]}]
  end
end

def pick_winners
  @winners = @times.sort_by { |a, b| b }
  puts "#{@winners[0][0]} came in first at #{@winners[0][1]} seconds!"
  sleep (1)
  puts "#{@winners[1][0]} came in second at #{@winners[1][1]} seconds!"
  sleep (1)
  puts "#{@winners[2][0]} came in third at #{@winners[2][1]} seconds!"
  sleep (1)
  puts "#{@winners[3][0]} put in a good effort coming in fourth at #{@winners[3][1]} seconds."
  sleep (1)
  puts "#{@winners[4][0]} finishing strong in fifth place at #{@winners[4][1]} seconds."
end

def race
  gen_racers
  puts "The racers are lining up!"
  sleep (2)
  puts "And they're off!"
  puts "#{@times.keys.sample} rockets out the gate!"
  sleep(1)
  puts "#{@times.keys.sample} is coming up fast!"
  sleep(2)
  puts "#{@times.keys.sample} appears to be struggling!"
  sleep(1)
  puts "#{@times.keys.sample} is making a push for the front!!"
  sleep(2)
  puts "#{@times.keys.sample} Is in front, but can they hold that pace?"
  sleep(1)
  puts "#{@times.keys.sample} stumbled a bit but is back up!"
  sleep(2)
  puts "#{@times.keys.sample} was on a breakaway but they seem to be fading!"
  sleep(1)
  puts "They're all coming up to the finish line!"
  sleep(1)
  puts "It's over!"
  sleep(3)
  pick_winners
  race_again
end

def race_again
  puts "Go again?"
  choice = gets.chomp.strip.downcase
  if choice == "yes" || choice == "y"
    puts "Alright!"
    sleep(1)
    race
  else
    puts "Thank you for visiting the Poke Races!"
    puts "Come again!"
    exit
  end
end

def start
  puts "Welcome to the Poke races!"
  puts "Would you care to watch a race?"
  choice = gets.chomp.strip.downcase
  if choice == "yes" || choice == "y"
    race
  else
    puts "Thank you for visiting the Poke Races!"
    puts "Come again!"
    exit
  end
end

start