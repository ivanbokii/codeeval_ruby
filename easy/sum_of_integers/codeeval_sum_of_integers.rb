def sum_of_integers(input)
  input.reduce(0, :+)
end

input = []
while line = gets
  input << line.to_i
end

print sum_of_integers(input)