require 'pry'

def duplicate_encode(word)
  array = word.downcase.split('')
  array.each do |x|
    if array.join.scan(/#{Regexp.quote(x)}/).size != 1
      array.map!{|change| change == x ? ')' : change}
    else
      array.map!{|change| change == x ? '(' : change}
    end
    # binding.pry
  end
  p array.join
end

# duplicate_encode(")((((")
# a = ")"
# p a.count('\)')
# p a.match('\)') ? true : false

duplicate_encode(')((((')
a = ')((('
p a.scan(/#{Regexp.quote(')')}/).size