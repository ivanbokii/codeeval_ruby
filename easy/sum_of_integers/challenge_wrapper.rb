require_relative 'sum_of_integers'

input = []
while line = gets
  input << line.to_i
end

print sum_of_integers(input)