require_relative 'bit_positions'

while line = gets
  input_array = line.split(',').map { |e| e.to_i }
  puts bit_positions(*input_array)
end