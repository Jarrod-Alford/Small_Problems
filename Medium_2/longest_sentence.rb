text = File.read('text_to_analyze.txt')

sentences = text.split(/\.|\?|!/)
lengths = sentences.map { |sentence| sentence.split.size }
longest = sentences.select { |sentence| sentence.split.size == lengths.max }
puts "#{longest[0]} => #{longest[0].split.size} words"
