#Bob is a lackadaisical teenager. In conversation, his responses are very limited.

#Bob answers 'Sure.' if you ask him a question.

#He answers 'Whoa, chill out!' if you yell at him.

#He says 'Fine. Be that way!' if you address him without actually saying anything.

#He answers 'Whatever.' to anything else.


require 'pry'

puts "Meet Bob, he is quite lackadaisical, but he seems willing to talk with you."
puts "Go on, say something, don't be rude! If you get tired of talking to Bob, just use a single $, he hates talking about money."

def statement
  @input = gets.chomp.strip
  bob
end

def bob
  # binding.pry
  case @input.split('').last
  when "!"
    puts "Whoa, chill out!"
    statement
  when "?"
    puts "Sure."
    statement
  when nil
    puts "Fine. Be that way!"
    statement
  when "$"
    puts "NOOOOOOOO WHY YOU BRING UP MUNIEESSSSZZZ!??!!?"
    puts "*Bob ran away screaming*"
    exit
  else
    puts "Whatever."
    statement
  end
end

statement

    
    
    
