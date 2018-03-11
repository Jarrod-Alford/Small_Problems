def triangle(int)
  1.upto(int) { |idx| puts ('*' * idx).rjust(int) }
end

triangle(5)
triangle(9)
