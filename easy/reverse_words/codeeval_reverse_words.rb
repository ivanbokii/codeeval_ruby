def reverse_words(input)
  words = input.split.reverse.join(' ')
end

while line = gets
  next if line.chomp.empty?

  result = reverse_words line
  puts result
end