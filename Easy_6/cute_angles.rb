DEGREE = "\xC2\xB0"

def dms(dec_num)
  while dec_num < 0
    dec_num += 360
  end
  degrees = dec_num.floor
  not_degrees = dec_num - degrees
  seconds = (not_degrees * 3600).round
  minutes = 0
  while seconds >= 60
    seconds -= 60
    minutes += 1
  end
  make_the_string(degrees, minutes, seconds)
end

def make_the_string(deg, min, sec)
  min_sec = []
  [min, sec].each_with_index do |num, idx|
    if num < 10
      min_sec[idx] = '0' + num.to_s
    else
      min_sec[idx] = num.to_s
    end
  end
  "%(#{deg}#{DEGREE}#{min_sec[0]}'#{min_sec[1]}\")"
end

puts dms(30)
puts dms(76.73)
puts dms(254.6)
puts dms(93.034773)
puts dms(0)
puts dms(360)
puts dms(-180.5)
