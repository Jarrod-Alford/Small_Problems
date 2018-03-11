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

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]
puts x == [1, 2, 3, 4]

some_string = 'whut'
puts rotate_string(some_string) == 'hutw'
puts some_string == 'whut'

some_int = 193
puts rotate_integer(some_int) == 931
puts some_int == 193
