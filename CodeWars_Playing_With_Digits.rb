def dig_pow(n, p)
  sum = n.to_s.split('').map.with_index{|digit, index| digit.to_i ** (p+index)}.reduce(:+)
  p sum % n == 0 ? (sum / n) : -1
end

dig_pow(46288, 3)