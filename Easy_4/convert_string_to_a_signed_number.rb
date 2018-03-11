DIGITS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
          '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

def string_to_integer(string)
  number = 0
  backwards = string.reverse
  backwards.each_char.with_index do |dig, idx|
    number += (DIGITS[dig] * (10 ** idx))
  end
  number
end

def string_to_signed_integer(string)
  if string[0] == '+'
    string_to_integer(string.slice(1..-1))
  elsif string[0] == '-'
    0 - string_to_integer(string.slice(1..-1))
  else
    string_to_integer(string)
  end
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
