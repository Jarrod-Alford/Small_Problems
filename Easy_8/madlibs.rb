words = { 'noun' => '', 'verb' => '', 'adjective' => '', 'adverb' => '' }
words.each_key do |key|
  if key[0] =~ /aeiou/
    print "Enter an #{key}: "
  else
    print "Enter a #{key}: "
  end
  words[key] = gets.chomp
end

puts
puts "Do you #{words['verb']} your #{words['adjective']} #{words['noun']} #{words['adverb']}? That's hilarious!"
puts
puts "Put your #{words['adverb']} #{words['adjective']} #{words['noun']} where the sun don't #{words['verb']}!"
