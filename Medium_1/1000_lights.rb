def max_toggle(n)
  lights_on = []
  n.times { lights_on << false }
  switch_lights!(n, lights_on)
  array_to_return = []
  lights_on.each_with_index { |light, idx| array_to_return << idx if light }
  array_to_return
end

def switch_lights!(number, bank_status)
  1.upto(number) do |index|
    counter = index
    while counter <= number
      bank_status[counter] = !bank_status[counter]
      counter += index
    end
  end
end

puts max_toggle(5) == [1, 4]
puts max_toggle(10) == [1, 4, 9]
p max_toggle(999)
