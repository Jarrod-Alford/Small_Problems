def friday_13th(year)
  fridays = 0
  1.upto(12) do |month|
    fridays += 1 if (Time.local(year, month, 13)).friday?
  end
  fridays
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2
