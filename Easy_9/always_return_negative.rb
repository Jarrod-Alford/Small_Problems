def negative(num)
  return -num if num > 0
  return num
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0
