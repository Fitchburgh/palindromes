def is_palindrome?()
  user_string = self.downcase.gsub(/[^0-9A-Za-z]/ ,"").scan(/./)
  if user_string.length <= 1
    true
  else
    if user_string.pop == user_string.shift
      user_string.join.is_palindrome?
    else
      false
    end
  end
end

print": "
input = gets.downcase.gsub(/[^0-9A-Za-z]/ ,"")
is_palindrome?()

if input == []
  puts "You got 'r!"
else
  puts "Dis not no 'drome!"
end











# string.split("")
# use .pop and .shift to remove first and last of an array

# user_file = 'palindrome.txt'
# f = File.open(user_file, "r")
# f.each_line { |line|
#   puts line
# }
# f.close
