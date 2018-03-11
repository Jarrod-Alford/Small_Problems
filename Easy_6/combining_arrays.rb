def merge(arr1, arr2)
  result = []
  [arr1, arr2].each do |arr|
    arr.each do |el|
      result << el unless result.include?(el)
    end
  end
  result
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
puts merge(['a', 'b', 'c'], ['x', 'y', 'z']) == ['a', 'b', 'c', 'x', 'y', 'z']
puts merge([1], []) == [1]
puts merge([], []) == []
