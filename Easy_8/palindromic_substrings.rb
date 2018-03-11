def substrings_at_start(str)
  array = []
  1.upto(str.length) { |idx| array << str.slice(0, idx) }
  array
end

def substrings(str)
  array = []
  0.upto(str.length - 1) { |idx| array << substrings_at_start(str[idx..-1])}
  array.flatten
end

def palindromes(str)
  substrings(str).select { |substr| substr == substr.reverse && substr.length > 1 }
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
