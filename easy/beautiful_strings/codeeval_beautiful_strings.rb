def beautiful_strings(input)
  beauty = 26

  string_beauty = input.gsub(/[^A-Za-z]/i, '')
    .downcase
    .split('')
    .reduce(Hash.new(0)) do |letters, l|
      letters[l] += 1
      letters
    end
    .values
    .sort { |a, b| b <=> a }
    .reduce(0) do |sum, value|
      sum += value * beauty
      beauty -= 1
      sum
    end

    string_beauty
end

while line = gets
  puts beautiful_strings(line)
end