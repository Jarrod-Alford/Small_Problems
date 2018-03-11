print 'Please write word or multiple words: '
input = gets.chomp
number = 0
input.each_char { |char| number += 1 unless char == ' ' }
puts "There are #{number} characters in \"#{input}.\""
