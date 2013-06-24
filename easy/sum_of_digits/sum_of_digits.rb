def sum_of_digits(input)
  sum = 0

  (
    sum += input % 10
    input = input / 10
  ) until input == 0

  sum
end