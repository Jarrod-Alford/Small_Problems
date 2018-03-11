def double_consonants(str)
  output = ''
  str.each_char do |char|
    output << char
    if char =~ /[a-z&&[^aeiou]]/i
      output << char
    end
  end
  output
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""
