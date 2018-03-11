DIGITS = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
          5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'}

def integer_to_string(number)
  return '0' if number == 0
  output = ''
  divisor = 10
  while number > 0
    output << DIGITS[(number % divisor) / (divisor / 10)]
    number -= (number % divisor)
    divisor *= 10
  end
  output.reverse
end

def signed_integer_to_string(number)
  return '0' if number == 0
  if number > 0
    '+' + integer_to_string(number)
  else
    '-' + integer_to_string(-number)
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
