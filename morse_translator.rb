require 'pry'
puts "please enter a sentence to translate to morse code: (press 'enter' when finished)"
ARGF.each_line do |line|
  puts line.chomp.upcase.gsub(//, " ").gsub(/[^A-Z0-9:;=+_"$@ -]/, "-").gsub(/[A-Z0-9:;=+_"$@-]/, Hash[*%w(A .- B -... C -.-. D -.. E . F ..-. G --. H .... I .. J .--- K -.- L .-.. M -- N -. O --- P .--. Q --.- R .-. S ... T - U ..- V ...- W .-- X -..- Y -.-- Z --.. . .-.-.- , --..-- ? ..--.. / -..-. @ .--.-. 1 .---- 2 ..--- 3 ...-- 4 ....- 5 ..... 6 -.... 7 --... 8 ---.. 9 ----. 0 ----- : ---... ; -.-.-. = -...- + .-.-. - -....- _ ..--.- " .-..-. $ ...-..- @ .--.-.)]).strip
  exit if line == "\n"
end

# Morse_Hash = {
#   '.-' => 'A'  
#   '-...' => 'B'
#   '-.-.' => 'C' 
#   '-..' => 'D'
#   '.' => 'E'
#   '..-.' => 'F'
#   '--.' => 'G' 
#   '....' => 'H'
#   '..' => 'I'
#   '.---' => 'J' 
#   '-.-' => 'K'
#   '.-..' => 'L'
#   '--' => 'M'
#   '-.' => 'N'
#   '---' => 'O'
#   '.--.' => 'P'
#   '--.-' => 'Q'
#   '.-.' => 'R'
#   '...' => 'S'
#   '-' => 'T'
#   '..-' => 'U'
#   '...-' => 'V' 
#   '.--' => 'W'
#   '-..-' => 'X'
#   '-.--' => 'Y'
#   '--..' => 'Z'
#   '.-.-.-' => '.'
#   '--..--' => ','
#   '..--..' => '?'
#   '-..-.' => '/'
#   '.--.-.' => '@'
#   '.----' => '1'
#   '..---' => '2'
#   '...--' => '3'
#   '....-' => '4'
#   '.....' => '5'
#   '-....' => '6'
#   '--...' => '7'
#   '---..' => '8'
#   '----.' => '9'
#   '-----' => '0'
#   '---...' => ':'
#   '-.-.-.' => ';'
#   '-...-' => '='
#   '.-.-.' => '+'
#   '-....-' => '-'
#   '..--.-' => '_'
#   '.-..-.' => '"'
#   '...-..-' => '$'
#   '.--.-.' => '@'
# }

# class MorseToEnglish
#   def morse_translator(string_morse)
#     @translated_string = ""
#     puts translate(string_morse)
#   end

#   def mk_morse_code line
#     line.split('').map{|string| Morse_Hash.key string.downcase}.join(' ')
#   end

#   def translate(string_morse)
#     array_morse = string_morse.split()
#     array_morse.each{|morse| @translated_string += Morse_Hash[morse] unless Morse_Hash[morse].nil? }
#     @translated_string
#   end
# end

# morse = MorseToEnglish.new

# morse.morse_translator("... --- ... --- ...")

# mc = morse.mk_morse_code('hi. what is your name?')
# puts mc