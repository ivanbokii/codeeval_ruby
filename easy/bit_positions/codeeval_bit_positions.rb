def bit_positions(number, position1, position2)
  #small optimization
  return true if position1 == position2

  first_mask = 2 ** (position1 - 1)
  second_mask = 2 ** (position2 - 1)

  first_result = first_mask & number
  second_result = second_mask & number

  (first_result == second_result) or (first_result != 0 and second_result != 0)
end

while line = gets
  input_array = line.split(',').map { |e| e.to_i }
  puts bit_positions(*input_array)
end