BLOCKS = {'b' => 'o', 'o' => 'b',
          'x' => 'k', 'k' => 'x',
          'd' => 'q', 'q' => 'd',
          'c' => 'p', 'p' => 'c',
          'n' => 'a', 'a' => 'n',
          'g' => 't', 't' => 'g',
          'r' => 'e', 'e' => 'r',
          'f' => 's', 's' => 'f',
          'j' => 'w', 'w' => 'j',
          'h' => 'u', 'u' => 'h',
          'v' => 'i', 'i' => 'v',
          'l' => 'y', 'y' => 'l',
          'z' => 'm', 'm' => 'z'}

def block_word?(word)
  answer = true
  word.each_char.with_index do |outer_char, outer_index|
    word.each_char.with_index do |inner_char, inner_index|
      next if inner_index == outer_index
      answer = false if inner_char.downcase == outer_char.downcase
      answer = false if inner_char.downcase == BLOCKS[outer_char.downcase]
    end
  end
  answer
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true
puts block_word?('beep') == false
