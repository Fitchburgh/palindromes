def is_palindrome?(user_string)
  user_string == user_string.reverse
end

puts "Please enter a word or phrase to test: "
user_string = gets.chomp.downcase.gsub(/[^0-9A-Za-z]/ ,"")

if is_palindrome?(user_string)
  puts "This is a palindrome."
else
  puts "This is not a palindrome."
end
