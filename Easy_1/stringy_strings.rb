def stringy(num, first = 1)
  output = ''
  output << first.to_s unless num == 0
  (num - 1).times do
    if output[-1] == '0'
      output << '1'
    else
      output << '0'
    end
  end
  output
end

puts stringy(6) == '101010'
puts stringy(9, 1) == '101010101'
puts stringy(4, 1) == '1010'
puts stringy(7) == '1010101'
puts
puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'
