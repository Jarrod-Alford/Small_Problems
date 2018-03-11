def diamond(n)
  stars_per_row = diamond_array(n)
  stars_per_row.each do |idx|
    if idx == 1
      puts '*'.center(n)
    else
      puts ('*' + (' ' * (idx - 2)) + '*').center(n)
    end
  end
end

def diamond_array(n)
  array = []
  1.upto(n) { |idx| array << idx if idx.odd? }
  (n - 2).downto(1) { |idx| array << idx if idx.odd? }
  array
end

puts
diamond(5)
puts
diamond(9)
