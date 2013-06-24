require_relative 'sum_of_digits'

while line = gets
  input = line.to_i
  puts sum_of_digits(input)
end