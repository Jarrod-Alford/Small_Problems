def swap(sentence)
  array = sentence.split
  array.map! do |word|
    word << word[0]
    word[0] = word[-2]
    if word.length > 2
      word.slice(0..-3) + word[-1]
    else
      word.chop
    end
  end
  array.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
