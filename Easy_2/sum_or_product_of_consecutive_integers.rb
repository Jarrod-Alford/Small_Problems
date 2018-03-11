puts 'Please enteran integer greater than 0:'
num = gets.chomp.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product."
op = gets.chomp

if op == 's'
  sum = (1..num).reduce(:+)
  puts "The sum of the integers between 1 and #{num} is #{sum}."
else
  product = (1..num).reduce(:*)
  puts "The product of the integers between 1 and #{num} is #{product}."
end
