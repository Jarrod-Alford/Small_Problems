def staggered_case(str, num = 0)
  flip = false
  flip = !flip if num == 1
  array = str.chars.map do |char|
    flip = !flip
    if flip
      char.upcase
    else
      char.downcase
    end
  end
  array.join
end

puts staggered_case('I Love Launch School!', 0) == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS', 1) == 'aLl_cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
