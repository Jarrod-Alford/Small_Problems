def crunch(string)
  new_string = ''
  string.each_char.with_index do |char, idx|
    new_string << char unless string[idx + 1] == char
  end
  new_string
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
