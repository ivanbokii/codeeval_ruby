require_relative 'selfdescribing_numbers'

while line = gets
  input = line.to_i
  puts selfdescribing_numbers(input)
end