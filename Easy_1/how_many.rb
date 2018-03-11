def count_occurrences(array)
  hash = {}
  array.each do |element|
    if hash.keys.include?(element)
      hash[element] += 1
    else
      hash[element] = 1
    end
  end
  hash.each { |key, idx| puts "#{key} => #{idx}" }
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
count_occurrences(vehicles)
