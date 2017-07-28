# You guys now take bets for a horse race.

# Take bids from people and then give the pay out to the winner.

# create four horses.

# accecpt bets to which will win.

# randomly choose a horse to win and pay out to the winner.

class Horse_Betting

  def initialize
    @racers = ["Born Again Equestrian", "Born Again Equestrian", "Born Again Equestrian", "Grandpa's Fur Coat", "Mama Jamba", "Chuck Norris the Horse", "Chuck Norris the Horse", "Mama Jamba", "Mama Jamba", "Mama Jamba"]
  end

def confirm
  yes_no = gets.chomp.strip.downcase
  if yes_no == "y" || yes_no == "yes"
    puts "Thank you very much! Enjoy the race!"
    race
  elsif yes_no == "n" || yes_no == "no"
    system "clear"
    puts "Oh, let's try again then."
    setup
  else
    puts "please enter y or n"
    confirm
  end
end

  def setup
    puts "Here is the list of horses:"
    puts "\n 1) Born Again Equestrian at 3:1 odds.\n2) Grandpa's Fur Coat at 6:1 odds.\n3) Mama Jamaba at 2:1 odds.\n4) Chuck Norris the Horse at 4:1 odds.".lines.map {|line| line.strip.center(50)}.join("\n")
    choose_horse
    place_bet
    puts "So you want to bet on #{@choice} for $#{@bet}?"
    confirm
  end

  def choose_horse
    puts "\nWhich horse would you like to be on? (1, 2, 3, or 4)"
    @choice = gets.chomp.strip.to_i
    case @choice
    when 1
      @choice = "Born Again Equestrian"
    when 2
      @choice = "Grandpa's Fur Coat"
    when 3
      @choice = "Mama Jamba"
    when 4
      @choice = "Chuck Norris the Horse"
    else
      puts "Please choose a horse."
      choose_horse
    end
  end

  def place_bet
    puts "Ok and how much will you wager? (enter a number, decimals will be rounded down to the nearest whole number.)"
    @bet = gets.chomp.strip.to_i
    if @bet > 0

    else
      puts "please enter a whole number that is greater than 0."
      place_bet
    end
  end

  def winner
    @winner = @racers.sample
  end

  def check_win
    if @choice == @winner
      case @choice
      when "Born Again Equestrian"
        @winnings = @bet * 3
        puts "Nice! You won $#{@winnings}"
        play_again
      when "Grandpa's Fur Coat"
        @winnings = @bet * 6
        puts "Way to take a risk! I guess you had a good feeling and look at that, you won $#{@winnings}!"
        play_again
      when "Mama Jamba"
        @winnings = @bet * 2
        puts "Always good to go for the more likely odds eh? You won $#{@winnings} on that race."
        play_again
      when "Chuck Norris the Horse"
        @winnings = @bet * 4
        puts "Wow! You won $#{@winnings}"
        play_again
      end
    else
      puts "Too bad, looks like your horse didn't win, better luck next time!"
      play_again
    end
  end
  def race
    winner
    puts "Annnnd they're off! #{@racers.sample} is rocketing out of the gate!"
    sleep(1.5)
    puts "#{@racers.sample} is taking the lead, oh they are all in such good form today!"
    sleep(1.5)
    puts "Oh what's this? #{@racers.sample} took the lead but seems to be slowing down! the others are catching up!"
    sleep(1.5)
    puts "#{@racers.sample} fell behind but is making a push for the front!"
    sleep (1.5)
    puts "It's so exciting! They're neck and neck!"
    sleep (1.5)
    puts "They've crossed the finish line! But it's too close to call!"
    sleep (1.5)
    puts "It's a photo finish and the winner is..."
    sleep (2)
    puts "It's #{@winner}! #{@winner} has come out in first! What a magnificent horse!"
    puts "A good job to all the racers today, and those of you who placed bets, please see the ticket counter for you winnings!"
    sleep (1)
    check_win
  end

  def play_again
    puts "Would you like to bet on the next race? (y or n)"
    play = gets.chomp.strip.downcase
    if play == "y" || play == "yes"
      puts "Great!"
      setup
    elsif play == "n" || play == "no"
      puts "No trouble, thanks for coming out!"
      exit
    else
      puts "Please enter y or n"
      play_again
    end
  end
end

game = Horse_Betting.new
game.setup