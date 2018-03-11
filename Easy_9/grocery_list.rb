def buy_fruit(outer_array)
  goal = []
  outer_array.each do |inner_array|
    inner_array[1].times { |idx| goal << inner_array[0] }
  end
  goal
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
