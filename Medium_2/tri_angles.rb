def triangle(ang1, ang2, ang3)
  return :invalid unless valid_triangle?([ang1, ang2, ang3])
  return :right if [ang1, ang2, ang3].any? { |ang| ang == 90 }
  return :obtuse if [ang1, ang2, ang3].any? { |ang| ang > 90 }
  :acute
end

def valid_triangle?(angle_array)
  return false if angle_array.any? { |ang| ang <= 0 }
  return false if angle_array[0] + angle_array[1] + angle_array[2] != 180
  true
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid
