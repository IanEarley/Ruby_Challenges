def get_middle(s)
  array = s.split('')
  if array.length.odd?
    puts array[(array.length - 1)/2]
  else
    letters = array[(array.length - 1)/2], array[(array.length - 1)/2 + 1]
    puts letters.join
  end
end

get_middle("hello")