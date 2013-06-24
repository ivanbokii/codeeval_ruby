require_relative 'number_multiples'

while line = gets
  input_array = line.split(',').map { |e| e.to_i }
  puts number_multiple(*input_array)
end