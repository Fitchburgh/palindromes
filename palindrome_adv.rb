require 'pry'
def palindrome?(user_string)
  user_string = user_string.downcase.gsub(/[^0-9A-Za-z]/, '').scan(/./)
  if user_string.length <= 1
    true
  elsif user_string.pop == user_string.shift
    palindrome?(user_string.join)
  else
    false
  end
end

print ': '
input = gets.downcase.gsub(/[^0-9A-Za-z]/, '')
answer = palindrome?(input)

if answer == true
  puts 'You got \'r!'
else
  puts 'Dis not no \'drome!'
end
