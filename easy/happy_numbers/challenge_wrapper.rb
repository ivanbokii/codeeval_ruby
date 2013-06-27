require_relative 'happy_numbers'

while line = gets
  input = line.to_i
  puts happy_numbers(input)
end