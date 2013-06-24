def sum_of_digits(input)
  sum = 0

  (
    sum += input % 10
    input = input / 10
  ) until input == 0

  sum
end

while line = gets
  input = line.to_i
  puts sum_of_digits(input)
end