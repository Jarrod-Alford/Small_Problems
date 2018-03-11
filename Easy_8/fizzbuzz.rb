def fizzbuzz(start, finish)
  output = ''
  start.upto(finish) do |num|
    if num % 3 == 0 && num % 5 == 0
      output << 'FizzBuzz, '
    elsif num % 5 == 0
      output << 'Buzz, '
    elsif num % 3 == 0
      output << 'Fizz, '
    else
      output << "#{num}, "
    end
  end
  puts output.chop.chop
end

fizzbuzz(1, 15)
puts
fizzbuzz(88, 151)
