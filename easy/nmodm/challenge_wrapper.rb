require_relative 'nmodm'

while line = gets
  n, m = line.split(',').map { |n| n.to_i }
  puts nmodm(n, m)
end