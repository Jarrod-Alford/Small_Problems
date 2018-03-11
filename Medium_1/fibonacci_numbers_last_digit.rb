def fibonacci(n)
  return 1 if n == 1 || n == 2
  fib_array = [1, 1]
  (n - 2).times { fib_array << fib_array[-2] + fib_array[-1] }
  fib_array[-1]
end

def fibonacci_last(n)
  (fibonacci(n)).to_s[-1].to_i
end

puts fibonacci_last(15) == 0
puts fibonacci_last(20) == 5
puts fibonacci_last(100) == 5
puts fibonacci_last(100_001) == 1
puts fibonacci_last(1_000_007) == 3
puts fibonacci_last(123456789) == 4
