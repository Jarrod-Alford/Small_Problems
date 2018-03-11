def remove_nonletters(arr)
  arr.map do |word|
    word.delete('^a-zA-Z')
  end
end

def word_sizes(input)
  array = input.split
  array = remove_nonletters(array)
  hash = {}
  array.each do |word|
    if hash.keys.include?(word.length)
      hash[word.length] += 1
    else
      hash[word.length] = 1
    end
  end
  hash
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
