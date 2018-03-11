def sum(num)
  num.to_s.split('').reduce { |sum, value| value.to_i + sum.to_i }
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
