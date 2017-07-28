require_relative 'mad_lib_wordbank'

puts @turbo

class MadLib < MadLibWordbank::UseYourWords
  def the_lib
    puts "The #{@wordbank[0]} #{@wordbank[1]} could #{@wordbank[2]} #{@wordbank[3]} than any #{@wordbank[4]} and could #{@wordbank[5]} #{@wordbank[6]} than a #{@wordbank[7]}, that #{@wordbank[1]} truly was #{@wordbank[8]}"
  end
end

libby = MadLib.new

libby.set_wordbank
libby.the_lib