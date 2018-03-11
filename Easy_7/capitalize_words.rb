def word_cap(str)
  array = str.split
  new_str = ''
  array.each { |word| new_str << (word.capitalize + ' ') }
  new_str.chop
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
