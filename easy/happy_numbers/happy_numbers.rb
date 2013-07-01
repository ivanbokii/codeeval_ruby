def get_digits(number)
  result = []

  (
    result << number % 10
    number = number / 10
  ) until number == 0

  result
end

def happy_numbers(input)
  #check that number is not in the hash, if there is - number is not happy
  #save number to the hash
  #get number's digits
  #sum digits
  #check for happiness, return 1 if number is happy
  #repeat

  checkedNumbers = {}
  loop do
    return 0 if checkedNumbers.has_key?(input)
    checkedNumbers[input] = 0
    sum = get_digits(input).reduce(0) { |result, d| result += d ** 2 }

    return 1 if sum == 1
    input = sum
  end
end