#Build a deck of cards
#normal 52 playing card deck
#you need to be able to draw cards and discard them and have them not be in the deck anymore.

require 'pry'

@deck = {
 "Hearts" => [
    "Ace",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Jack",
    "Queen",
    "King"
 ],

 "Spades" => [
    "Ace",
    "Two",
    "Three",
    "Four",
    "Five", 
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Jack",
    "Queen",
    "King"
 ],

 "Diamonds" => [
    "Ace",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Jack",
    "Queen",
    "King"
 ],

 "Clovers" => [
    "Ace",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Jack",
    "Queen",
    "King"
 ],

 "Jokers" => [
    "Joker 1",
    "Joker 2"
 ]
}

@cards_drawn = []

def draw_a_card
  suit = @deck.keys.sample
  card = @deck[suit].sample
  @deck[suit].delete(card)
  @cards_drawn << "#{card} of #{suit}"
  puts "You drew the #{card} of #{suit}!"
end

def show_drawn
  puts @cards_drawn
end

def delete_empty
    if 

def game
  until @cards_drawn == 54 do
    puts "Care to draw a card? (y) (n)"
    puts "you can also look at drawn cards by typing 'show'"
    choice = gets.chomp.strip.downcase
    if choice == "y"
      puts "Here we go!"
      draw_a_card
  elsif choice == "show"
      show_drawn
    else
      puts "Ok, thanks for playing!"
      exit
    end
  end
end

game
