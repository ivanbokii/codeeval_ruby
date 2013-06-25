def fibonacci(n)
  return n if n <= 1

  fibonacci(n - 1) + fibonacci(n - 2)
end

while line = gets
  input = line.to_i
  puts fibonacci(input)
end