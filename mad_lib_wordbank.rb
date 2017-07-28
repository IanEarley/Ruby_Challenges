module MadLibWordbank
  class UseYourWords
    def set_wordbank
      @wordbank = []
      puts "Would you like to generate your own wordbank? (y)/(n)"
      choice = gets.chomp.downcase.strip
      choice == "y" || choice == "yes" ? generate_wordbank : @wordbank = ["talented", "Mr. Ripley", "jump", "higher", "man", "run", "faster", "cheetah", "amazing"]
    end

    def generate_wordbank
      puts "Enter an adjective:"
      input = gets.chomp.downcase.strip
      @wordbank[0] = input
      puts "Enter a noun:"
      input = gets.chomp.downcase.strip
      @wordbank[1] = input
      puts "Enter a verb:"
      input = gets.chomp.downcase.strip
      @wordbank[2] = input
      puts "Enter a comparative adjective:"
      input = gets.chomp.downcase.strip
      @wordbank[3] = input
      puts "Enter a noun:"
      input = gets.chomp.downcase.strip
      @wordbank[4] = input
      puts "Enter a verb:"
      input = gets.chomp.downcase.strip
      @wordbank[5] = input
      puts "Enter a comparative adjective:"
      input = gets.chomp.downcase.strip
      @wordbank[6] = input
      puts "Enter a noun:"
      input = gets.chomp.downcase.strip
      @wordbank[7] = input
      puts "Enter an adjective:"
      input = gets.chomp.downcase.strip
      @wordbank[8] = input
    end
  end
end