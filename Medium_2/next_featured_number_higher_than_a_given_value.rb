def featured(counter)
  loop do
    if counter >= 9_999_999_999
      puts 'There is no possible number that fulfills those requirements.'
      exit
    end
    counter += 1
    return counter if (counter % 7 == 0 && counter.odd? && counter.to_s.chars == counter.to_s.chars.uniq)
  end
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
