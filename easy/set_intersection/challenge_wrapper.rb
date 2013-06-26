require_relative 'set_intersection'

while line = gets
  sets = line.split(';')
  first_set = sets[0].split(',').map { |el| el.to_i }
  second_set = sets[1].split(',').map { |el| el.to_i }
  
  intersection = set_intersection(first_set, second_set)
  puts intersection.join(",")
end