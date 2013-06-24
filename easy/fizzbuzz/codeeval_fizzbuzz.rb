def fizzbuzz(a, b, n)
  return [] if n == 0

  result = (1..n).map do |item|
    value = ''
    value += 'F' if item % a == 0
    value += 'B' if item % b == 0
    
    result = value.empty? && item || value
    yield result if block_given?

    result
  end

  result
end

while line = gets
  input_array = line.split(' ').map { |e| e.to_i }
  fizzbuzz(*input_array) { |e| print "#{e} " }

  puts
end