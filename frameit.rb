def frameit sentence
  stars = (sentence.max_by(&:length)).length + 2
  puts "*" * (stars)
  sentence.each {|x| puts "*#{x}" + " " * (stars - x.length - 2) + "*" }
  puts "*" * (stars)    
end

def get_input
  puts "Enter a phrase to be framed:"
  @input = gets.chomp.strip.split(' ')
  frameit @input
end

get_input