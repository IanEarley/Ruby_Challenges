require 'prime'

puts "Let's play fizzbuzz prime!"
puts "Enter any number!"
@input = gets.chomp.to_i

def fizzbuzz_prime() 1.upto(@input) do |number|; puts number % 15 == 0? "Fizzbuzz!": number % 5 == 0? "Buzz!": number % 3 == 0? "Fizz!": number.prime? ? "PRIME!": number; end; end

fizzbuzz_prime
puts "Whoo! Fizzbuzz Prime!"