require_relative 'unique_elements'

while line = gets
  input_array = line.split(',').map { |e| e.to_i }
  str = unique_elements(input_array).reduce("") { |result_string, el| result_string += "#{el}," }
  print str.chop
  
  puts
end