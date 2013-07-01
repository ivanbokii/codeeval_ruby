require_relative 'armstrong_numbers'

while line = gets
  result = armstrong_numbers(line.to_i)
  puts result && "True" || "False"
end