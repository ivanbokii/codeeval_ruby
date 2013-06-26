def unique_elements(input)
  result = input.reduce(Hash.new()) do |h, i|
    h[i] = 0
    h
  end

  result.keys
end

while line = gets
  input_array = line.split(',').map { |e| e.to_i }
  puts unique_elements(input_array).join(",")
end