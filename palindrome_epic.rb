def palindrome?(input)
  input.each do |letter|
    if input.first == input.last
      input.pop
      input.shift
      palindrome?(input)
    end
  end
end

command_line_input = ARGV.first

File.foreach(command_line_input) do |line|
  puts line
  line = gets.downcase.gsub(/[^0-9A-Za-z]/, '').scan(/./)

  if palindrome?(line)
    puts "Dis a 'drome!"
  else
    puts "Dis ain't no 'drome!"
  end
end
