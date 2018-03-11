word_array = ['1st', '2nd', '3rd', '4th', '5th']
num_array = []
word_array.each do |word|
  puts "Enter the #{word} number:"
  num_array << gets.chomp.to_i
end

puts "Enter the last number:"
last_num = gets.chomp.to_i

if num_array.include?(last_num)
  puts "The number #{last_num} appears in #{num_array}."
else
  puts "The number #{last_num} does not appear in #{num_array}."
end
