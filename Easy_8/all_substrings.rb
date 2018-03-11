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

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
