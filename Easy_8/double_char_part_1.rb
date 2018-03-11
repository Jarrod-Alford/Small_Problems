def repeater(str)
  output = ''
  str.each_char { |char| output << char * 2 }
  output
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''
