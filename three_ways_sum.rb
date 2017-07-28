#Write three methods that compute the sum of the numbers in an array using a for-loop, while-loop and recursion
require 'pry'
@arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def for_loop
  total = 0
  for x in @arr
    total += x
  end
    puts total
end

for_loop

def while_loop
  count = 0
  total = 0
  while count < @arr.length do
    total += @arr[count]
    count += 1
  end
  puts total
end

while_loop

@total = 0

def recursion_loop (count)
  return puts @total if count == @arr.length
  @total = @total + @arr[count]
  recursion_loop(count + 1)
end

recursion_loop(0)