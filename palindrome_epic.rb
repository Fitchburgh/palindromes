#Why was I not able to use class Array or class String
def is_palindrome?(input)
    input.each do |letter|
    if input.first == input.last
      input.pop
      input.shift
      is_palindrome?(input)
    end
  end
end

command_line_input = ARGV.first

File.foreach(command_line_input) do |line|
    puts line
    line = gets.downcase.gsub(/[^0-9A-Za-z]/ ,"").scan(/./)
    is_palindrome?(line)
    if line == []
      puts "Dis a 'drome!
      "
    else
      puts "Dis ain't no 'drome!
      "
    end
  end
