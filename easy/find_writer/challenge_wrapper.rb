require_relative 'find_writer'

while line = gets
  puts find_writer(line)
end