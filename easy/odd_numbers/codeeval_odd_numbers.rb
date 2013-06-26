def odd_numbers(input)
  (1..input).find_all { |i| i % 2 == 1 }
end

result = odd_numbers(99)
result.each { |n| puts n }