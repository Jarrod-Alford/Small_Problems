SEQUENCES = {1 => 'st', 2 => 'nd', 3 => 'rd'}

def century(year)
  if year % 100 != 0
    output = ((year / 100) + 1).to_s
  else
    output = (year / 100).to_s
  end
  if SEQUENCES.keys.include?(output[-1].to_i % 10) && !(['11', '12', '13'].include?(output[-2..-1]))
    output << SEQUENCES[output[-1].to_i % 10]
  else
    output << 'th'
  end
  output
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
