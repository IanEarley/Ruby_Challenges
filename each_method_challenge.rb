#use the each method of array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], and print out each value.

#same as above, but only print out values greater than 5.

#Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

#Then turn them into dragons

#Have a user guess the number of dragons.

#Give Dan 20 bucks

#Give Elise nothing!

array_1 = (1..20).to_a

array_1.each { |x| print x }

array_2 = (1..20).to_a

array_2.each { |x| if x > 5 then print x end}

array_3 = array_2.select{ |number| number.odd?}
puts array_3

dragon_array = array_3.each { |x| puts "#{x} is now a Dragon!" }

puts "Raawwwwrrr!!"

puts "How many Dragons are there?:"
choice = gets.chomp.strip.to_i
if choice == dragon_array.size then puts "You guessed right!" else puts "Can you not count the above list??" end

array_1.each { |x| print "$#{x}, "}
puts "there ya go Dan, you get $20!"
puts "Elise you get nothing... because Dan said so."