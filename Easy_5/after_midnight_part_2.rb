def after_midnight(string)
  return 0 if string == '00:00' || string == '24:00'
  hours = string.slice(0..1).to_i
  (hours * 60) + string.slice(3..4).to_i
end

def before_midnight(string)
  return 0 if string == '00:00' || string == '24:00'
  1440 - after_midnight(string)
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
