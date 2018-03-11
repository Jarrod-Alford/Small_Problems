def fibonacci(n)
  return 1 if n == 1 || n == 2
  fib_array = [1, 1]
  (n - 2).times { fib_array << fib_array[-2] + fib_array[-1] }
  fib_array[-1]
end

puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075
puts fibonacci(100_001)
