def oddities(original_array)
  new_array = []
  original_array.each_with_index { |element, index| new_array << element if index.even? }
  new_array
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
