def balanced?(str)
  tracker = 0
  str.each_char do |char|
    return false if tracker < 0
    tracker += 1 if char == '('
    tracker -= 1 if char == ')'
  end
  tracker == 0 ? true : false
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false
