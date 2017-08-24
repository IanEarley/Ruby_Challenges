require 'pry'
def duplicate_encode(word)
  array = word.split('')
  array.each do |x|
    if array.count(x) > 1
      array.map!{|change| change == x ? ')' : change}
    elsif array.count(x) == 1
      array.map!{|change| change == x ? '(' : change}
    else
      puts "toast"
    end
  end
  p array.join
end

duplicate_encode("porkchop")