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

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917
