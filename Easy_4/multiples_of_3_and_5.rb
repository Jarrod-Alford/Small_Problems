def multisum(num)
  array = (1..num).select { |n| n % 3 == 0 || n % 5 == 0 }
  array.reduce(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
