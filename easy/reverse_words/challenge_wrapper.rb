require_relative 'reverse_words'

while line = gets
  next if line.chomp.empty?

  result = reverse_words line
  puts result
end