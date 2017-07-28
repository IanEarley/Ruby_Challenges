require 'faker'

@people = ["Dan", "Dipesh", "Ian", "Gordon", "Braden", "Dave", "Jared", "Ben", "Tyson", "Dallin", "Muhammad"]
@animal = ["Lamb", "Tiger", "Cow", "Dragon", "Manticore"]

@nights_survived = 0
@dead = []
@random_name = Faker::LordOfTheRings.character

def village
  until @people.size == 1 do
    @nights_survived += 1
    @people.shuffle!
    shifter = @people[0]
    @animal.shuffle!
    creature = @animal[0]
    case creature
      when "Lamb"
      when "Tiger"
        @dead << @people.pop
      when "Cow"
        @dead << @people.shift
      when "Dragon"
        @dead << @people.pop
          unless @people == 1
            @dead << @people.pop
          end
      when "Manticore"
        @people << @random_name
      else 
        puts "Toast"
    end
  end
end
village
puts "Only one remains..."
puts "They survived for #{@nights_survived} nights."
puts "The survivor is..."
sleep(2)
puts @people