def sum_square_difference(num)
  sum_square = ((1..num).reduce(:+)) ** 2
  square_sum = ((1..num).map { |idx| idx ** 2 }).reduce(:+)
  sum_square - square_sum
end

puts sum_square_difference(3) == 22
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150
