def halvsies(array)
  arr1, arr2 = [], []
  counter = 0
  while counter < array.size
    until counter >= array.size.to_f / 2
      arr1 << array[counter]
      counter += 1
    end
    arr2 << array[counter] unless array.size == 1
    counter += 1
  end
  [arr1, arr2]
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
