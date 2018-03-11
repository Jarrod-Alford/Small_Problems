def rotate_array(array)
  return array if array.size == 1
  array[1..-1] << array[0]
end

def rotate_string(str)
  rotate_array(str)
end

def rotate_integer(int)
  rotate_string(int.to_s).to_i
end

def rotate_rightmost_digits(int, num)
  return int if int.to_s.length == 1
  int_as_s = int.to_s
  (int_as_s[0..-(num + 1)] + rotate_string(int_as_s[-num..-1])).to_i
end

def max_rotation(int)
  newest_int = int
  (int.to_s.length).downto(1) { |idx| newest_int = rotate_rightmost_digits(newest_int, idx) }
  newest_int
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15
puts max_rotation(8_703_529_146) == 7_321_609_845
