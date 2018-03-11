def substrings_at_start(str)
  array = []
  1.upto(str.length) { |idx| array << str.slice(0, idx) }
  array
end

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
