puts 'Enter the length of the room in feet:'
length = gets.chomp.to_f
puts 'Enter the width of the room in feet:'
width = gets.chomp.to_f
puts "The area of the room in square feet is #{(length * width).round(2)}."
puts "The area of the room in square inches is #{(length * width * 144).round(2)}"
puts "The area of the room in square centimeters is #{(length * width * 144 * 2.54 * 2.54).round(2)}"
