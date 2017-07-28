# Write a program that performs the fibonacci sequence
@start = [0, 1]
@count = 0

# def fibonacci
#   @start.each do
#     unless @start.size >= @input
#       sum = @start[@count] + @start[@count + 1]
#       @start << sum
#       @count += 1
#     end
#   end
#   puts @start
# end

# def fibonacci_2
#   @start = [0, 1]
#   @count = 1
#   while count <= @input
#     @start << (@start[@count] + @start[@count - 1])
#     @count += 1
#   end
#   puts @start
# end

# def fibonacci_3 (n)
#  [1..n].inject([0, 1]) { |fib| fib << fib.last(2).inject(:+) }

def fib (a)
  a == 0 || a == 1 ? a : fib(a - 2) + fib(a - 1)
end

def get_input
  puts "which fibonacci number do you want to look at? (please choose a whole number lower than 100)"
  @input = gets.chomp.strip
  if @input.match(/\D/) || @input.to_i >= 100
    puts "Please choose a whole number lower than 100."
    get_input
  else
    @input = @input.to_i
  end
end

get_input
puts fib (@input)