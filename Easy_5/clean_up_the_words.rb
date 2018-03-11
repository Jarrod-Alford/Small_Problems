def cleanup(sentence)
  better = sentence.gsub(/[~!@{$%^&*()-_=+{};:'",<.>?\\|]/, ' ')
  better[0] + better[1..-2].split.join(' ') + better[-1]
end

puts cleanup("---what's my +*& line?") == ' what s my line '
