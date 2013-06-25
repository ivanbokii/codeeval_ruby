require_relative 'fibonacci'

while line = gets
  input = line.to_i
  puts fibonacci(input)
end