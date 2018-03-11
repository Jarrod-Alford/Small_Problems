DIGITS_AS_WORDS = %w(zero one two three four five six seven eight nine)

def word_to_digit(sentence)
  word_array = sentence.split
  go_again = true
  while go_again
    go_again = false
    word_array.map! do |word|
      digit_index = nil
      DIGITS_AS_WORDS.each_with_index { |numword, idx| digit_index = idx if word.include?(numword) }
      if digit_index
        go_again = true
        word.gsub(DIGITS_AS_WORDS[digit_index], digit_index.to_s)
      else
        word
      end
    end
  end
  word_array.join(' ')
end

puts word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
puts word_to_digit('whut whutfivezeroonewhut whut') == 'whut whut501whut whut'
