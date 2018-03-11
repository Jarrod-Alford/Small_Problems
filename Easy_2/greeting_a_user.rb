print 'What is your name? '
name = gets
name.chomp!
if name[-1] == '!'
  name.chop!.upcase!
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
