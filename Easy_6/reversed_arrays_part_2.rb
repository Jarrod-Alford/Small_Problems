def backwards(array)
  flip = []
  array.size.times { flip << nil }
  array.each_with_index do |el, idx|
    flip[-(idx + 1)] = el
  end
  flip
end

arr1 = [1, 2, 3, 4]
arr2 = []
arr3 = ['abc']
arr4 = %w(a b c d e)

puts backwards(arr1) == [4, 3, 2, 1]
puts backwards(arr2) == []
puts backwards(arr3) == ['abc']
puts backwards(arr4) == %w(e d c b a)

puts arr1 == [1, 2, 3, 4]
puts arr2 == []
puts arr3 == ['abc']
puts arr4 == %w(a b c d e)
