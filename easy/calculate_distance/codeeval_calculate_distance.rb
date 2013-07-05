def calculate_distance(first, second)
  a = second[0] - first[0]
  b = second[1] - first[1]

  Math.sqrt(a ** 2 + b ** 2)
end

while line = gets
  first, second = line.split(") (")
  
  first = first[1..-1].split(",").map(&:to_i)
  second = second[0..-2].split(",").map(&:to_i)

  puts calculate_distance(first, second).to_i
end