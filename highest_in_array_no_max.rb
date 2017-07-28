# Sort through an array of numbers and give the highest number without using .max

arr = [1, 32, 132, 21, 5, 43]
highest = 0
arr.each do |x|
  if x > highest
    highest = x
  end
end
puts highest

arr.map { |x| highest = x if x > highest }
puts highest

arr.sort!{ |a, b| b <=> a}
puts arr.first