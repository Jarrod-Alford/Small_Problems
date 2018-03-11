def swapcase(str)
  array = str.chars.map do |char|
    if char.ord < 123 && char.ord >= 97
      char.upcase
    elsif char.ord < 91 && char.ord >= 65
      char.downcase
    else
      char
    end
  end
  array.join
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
