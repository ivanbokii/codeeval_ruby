def penultimate_word(input)
  input.split(' ')[-2]
end

while line = gets
  puts penultimate_word(line)
end