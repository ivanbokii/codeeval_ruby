def capitalize(input)
  input.split(' ').each { |e| e[0] = e[0].upcase }.join(' ')
end

while line = gets
  puts capitalize(line)
end