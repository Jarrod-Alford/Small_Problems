choices = { 'noun' => %w(man elf orc hobbit dwarf goblin),
            'transitive_verb' => %w(stabs kicks ignites hugs trips throws),
            'intransitive_verb' => %w(cries yelps collapses roars smiles rebounds),
            'adverb' => %w(clumsily drunkenly skillfully cautiously bravely mightily),
            'adjective' => %w(gigantic sleepy screaming enraged homesick confused)
          }

text = File.read 'madlibs_input.txt'

words = text.split
madlibs_array = words.map do |word|
  if word.start_with?('[') && word.include?(']')
    punctuation = word.end_with?(']') ? '' : word[-1]
    choices[word[1..(word.index(']') - 1)]].sample + punctuation
  else
    word
  end
end

puts madlibs_array.join(' ')
