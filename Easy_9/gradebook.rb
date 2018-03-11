MIN_SCORES = { 0 => 'F', 60 => 'D', 70 => 'C', 80 => 'B', 90 => 'A' }

def get_grade(first, second, third)
  average = (first + second + third) / 3.0
  return 'A' if average >= 100.0
  return MIN_SCORES[((average / 10).floor) * 10] if MIN_SCORES.keys.include?((average / 10).floor * 10)
  return 'F'
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
puts get_grade(100, 100, 100) == "A"
puts get_grade(9, 5, 3) == "F"
puts get_grade(23, 33, 43) == "F"
puts get_grade(99, 105, 105) == "A"
