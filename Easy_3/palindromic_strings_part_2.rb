def real_palindrome?(string)
  new_string = string.downcase.delete('!@#$%^&*()\-_=+[]{};:\'"<,.>/?\\|`~ ')
  new_string == new_string.reverse
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true
puts real_palindrome?("Madam, I'm Adam") == true
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
