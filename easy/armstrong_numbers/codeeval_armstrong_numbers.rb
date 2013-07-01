def armstrong_numbers(number)
  n = number.to_s.length
  result = number.to_s.split('').reduce(0) { |result, number| result += number.to_i ** n }

  result == number
end

while line = gets
  result = armstrong_numbers(line.to_i)
  puts result && "True" || "False"
end