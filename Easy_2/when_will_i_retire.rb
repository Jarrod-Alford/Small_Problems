puts 'What is your age?'
age = gets.chomp.to_i
puts 'At what age would you like to retire?'
retire_age = gets.chomp.to_i

puts "It's 2018. You will retire in #{2018 + retire_age - age}."
puts "You only have #{retire_age - age} years of work to go!"
