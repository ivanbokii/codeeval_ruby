def simple_sorting(input)
  input.sort
end

while line = gets
  input = line.split(' ').map(&:to_f)
  puts simple_sorting(input).map { |n| sprintf('%.3f', n) }.join(' ')
end