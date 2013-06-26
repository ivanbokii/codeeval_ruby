require_relative 'rightmost_char'

while line = gets
  puts rightmost_char(line.chomp)
end