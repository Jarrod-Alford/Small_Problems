def middle_word(str)
  index = str.split.size / 2
  if str.split.size.odd?
    str.split[index]
  else
    str.split[index - 1]
  end
end

puts middle_word('who are you?') == 'are'
puts middle_word('what do you want') == 'do'
