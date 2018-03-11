def multiply(x, y)
  x * y
end

def square(n)
  multiply(n, n)
end

def power(x, n)
  num = x
  (n - 1).times { x = multiply(x, num) }
  x
end

puts square(5) == 25
puts square(-8) == 64

puts power(1, 19) == 1**19
puts power(3, 4) == 3**4
