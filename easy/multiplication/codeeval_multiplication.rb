def multiplication(number)
  result = []
  (1..number).each do |row_number|
    (1..number).each do |multiplier|
      result[row_number - 1] = [] if result[row_number - 1].nil?
      result[row_number - 1][multiplier - 1] = row_number * multiplier
    end
  end

  result
end

result = multiplication(12)

result.each do |line|
  line.each { |number| print number.to_s.rjust(4) }
  puts
end