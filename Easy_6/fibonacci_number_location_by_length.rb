def find_fibonacci_index_by_length(number_of_digits)
  fib = [1, 1]
  while fib[-1].to_s.length < number_of_digits
    fib << fib[-2] + fib[-1]
  end
  fib.size
end

puts find_fibonacci_index_by_length(2) == 7
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
