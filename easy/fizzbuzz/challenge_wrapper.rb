require_relative 'fizzbuzz'

while line = gets
  input_array = line.split(' ').map { |e| e.to_i }
  fizzbuzz(*input_array) { |e| print "#{e} " }

  puts
end