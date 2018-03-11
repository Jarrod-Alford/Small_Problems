def convert_negative(minutes)
  while minutes < 0
    minutes += 1440
  end
  minutes
end

def subtract_days(minutes)
  while minutes >= 1440
    minutes -= 1440
  end
  minutes
end

def number_to_string(number)
  if number <= 9
    '0' + number.to_s
  else
    number.to_s
  end
end

def time_of_day(minutes)
  minutes = convert_negative(minutes) if minutes < 0
  minutes = subtract_days(minutes) if minutes > 1440
  hours = 0
  while minutes >= 60
    hours += 1
    minutes -= 60
  end
  "#{number_to_string(hours)}:#{number_to_string(minutes)}"
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
