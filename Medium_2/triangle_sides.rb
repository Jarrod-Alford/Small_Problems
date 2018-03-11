def triangle(side1, side2, side3)
  return :invalid unless valid_triangle?(side1, side2, side3)
  return :equilateral if side1 == side2 && side2 == side3
  return :scalene if [side1, side2, side3] == [side1, side2, side3].uniq
  return :isosceles
end

def valid_triangle?(side1, side2, side3)
  sides = [side1, side2, side3].sort
  return false if sides.any? { |side| side <= 0 }
  longest = sides.pop
  return false if sides[0] + sides[1] < longest
  true
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid
