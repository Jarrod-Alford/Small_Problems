def staggered_case(str, num = 0)
  flip = false
  flip = !flip if num == 1
  array = str.chars.map do |char|
    if char =~ /[a-zA-Z]/
      flip = !flip
      if flip
        char.upcase
      else
        char.downcase
      end
    else
      char
    end
  end
  array.join
end

puts staggered_case('I Love Launch School!', 0) == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS', 1) == 'aLl CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
