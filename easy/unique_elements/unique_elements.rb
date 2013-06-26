def unique_elements(input)
  result = input.reduce(Hash.new()) do |h, i|
    h[i] = 0
    h
  end

  result.keys
end