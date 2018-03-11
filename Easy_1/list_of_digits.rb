def digit_list(num)
  array = []
  num_as_str = num.to_s
  num_as_str.each_char { |digit| array << digit.to_i }
  array
end

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]
