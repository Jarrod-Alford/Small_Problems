def to_array(text)
  lines = ['']
  word_array = text.split
  line_number = 0
  word_array.each do |word|
    lines[line_number] << word + ' '
    if lines[line_number].length > 76
      (word.length + 1).times { lines[line_number].chop! }
      line_number += 1
      lines[line_number] = word + ' '
    end
  end
  lines.each { | line| line.chop! }
  lines
end

def print_in_box(text)
  array = to_array(text)
  box_width = [80, text.length + 4].min
  top_bottom = '+-'
  inside = '| '
  (box_width - 4).times do
    top_bottom << '-'
    inside << ' '
  end
  top_bottom << '-+'
  inside << ' |'
  puts top_bottom
  puts inside
  array.each { |line| puts "| #{line}".ljust(box_width - 2) + " |"}
  puts inside
  puts top_bottom
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box('The road goes ever on and on, down from the door where it began, now far ahead the road has gone, and I must follow if I can.')
