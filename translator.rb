#Write a language translator.

#ABCDEFGHIJKLMNOPQRSTUVWXYZ
#AZYXEWVTISRQPNOMLKJHUGFDCB

#Using this conversion, write a sentence in english that translates to the new alphabet.

#Way 1, no gems

require 'rspec'
require 'pry'

@translator = { "A" => "A", 
                "B" => "Z",
                "C" => "Y",
                "D" => "X",
                "E" => "E",
                "F" => "W",
                "G" => "V",
                "H" => "T",
                "I" => "I",
                "J" => "S",
                "K" => "R",
                "L" => "Q",
                "M" => "P",
                "N" => "N",
                "O" => "O",
                "P" => "M",
                "Q" => "L",
                "R" => "K",
                "S" => "J",
                "T" => "H",
                "U" => "U",
                "V" => "G",
                "W" => "F",
                "X" => "D",
                "Y" => "C",
                "Z" => "B"
             }

def translate_no_gem input
  @translator.each { |key, value| input.gsub!(key, value) }
  puts input
end

translate_no_gem("PEWODMWIWPQKSNQOW")

describe "translate no gem" do
  it "converts all letters to hash key value." do

    sentence = 'BREAKFAST'
    expect(translate_no_gem(sentence)).to eq('ZKEARWAJH')
  end
end

puts "Please enter a sentence:"
sentence = gets.chomp.downcase.strip

def translator_tr str
  alph = "abcdefghijklmnopqrstuvwxyz"
  repl = "azyxewvtisrqpnomlkjhugfdcb"
  str.tr(alph, repl)
end

puts translator_tr(sentence)