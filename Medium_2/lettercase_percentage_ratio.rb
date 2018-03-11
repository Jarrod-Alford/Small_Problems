def letter_percentages(str)
  percentages = { lowercase: 0, uppercase: 0, neither: 0 }
  str.each_char do |char|
    if char.ord >= 97 && char.ord < 123
      percentages[:lowercase] += 1
    elsif char.ord >= 65 && char.ord < 91
      percentages[:uppercase] += 1
    else
      percentages[:neither] += 1
    end
  end
  percentages.each_key do |key|
    percentages[key] *= 100.0
    percentages[key] /= str.length
  end
  percentages
end

puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
