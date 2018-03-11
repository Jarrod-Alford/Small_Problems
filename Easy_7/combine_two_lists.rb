def interleave(arr1, arr2)
  new_arr = []
  0.upto(arr1.size - 1) do |idx|
    new_arr << arr1[idx]
    new_arr << arr2[idx]
  end
  new_arr
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
