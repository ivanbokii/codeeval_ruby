def get_digits(number)
  result = []

  (
    result << number % 10
    number = number / 10
  ) until number == 0

  result
end

def happy_numbers(input)
  checkedNumbers = {}
  loop do
    return 0 if checkedNumbers.has_key?(input)
    checkedNumbers[input] = 0
    sum = get_digits(input).reduce(0) { |result, d| result += d ** 2 }

    return 1 if sum == 1
    input = sum
  end
end