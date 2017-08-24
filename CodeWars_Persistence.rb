require 'pry'

def persistence(n)
  value = n.to_s.split('').map(&:to_i)

  if value[1].nil?
    0
  else
    persist = []
    loop do
      value = value.inject(:*).to_s.split('').map(&:to_i)
      persist << value
      break if value[1].nil?
    end
    p persist.length
  end
end

persistence(231)