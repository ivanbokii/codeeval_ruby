def armstrong_numbers_optimized(number)
  #small optimization, we can use string to get length, but I think log is faster
  n = (number == 0 && 1 || Math.log10(number).to_i + 1)

  temp = number
  result = 0
  (
    result += (temp % 10) ** n
    temp = temp / 10
  ) until temp == 0

  result == number
end

def armstrong_numbers(number)
  n = number.to_s.length
  result = number.to_s.split('').reduce(0) { |result, number| result += number.to_i ** n }

  result == number
end