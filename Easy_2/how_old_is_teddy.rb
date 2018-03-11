puts 'Input a name, if you\'d like:'
name = gets.chomp
if name == ''
  name = 'Teddy'
end

puts "#{name} is #{rand(180) + 20} years old!"
