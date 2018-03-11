puts 'What is the bill?'
bill = gets.chomp.to_f
puts 'What is the tip percentage?'
tip_percent = gets.chomp.to_f
tip = (bill * tip_percent / 100).round(2)

puts
puts 'The tip is $' + sprintf("%.2f", tip)
puts 'The total bill is $' + sprintf("%.2f", bill + tip)
