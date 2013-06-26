def odd_numbers(input)
  (1..input).find_all { |i| i % 2 == 1 }
end