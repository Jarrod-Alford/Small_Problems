num = 1
loop do
  break if num > 99
  puts num.to_i if num % 2 == 1
  num += 1
end
