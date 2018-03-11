def xor(first, second)
  if (first && !second) || (!first && second)
    true
  else
    false
  end
end

puts xor(true, true) == false
puts xor(true, false) == true
puts xor(false, true) == true
puts xor(false, false) == false
