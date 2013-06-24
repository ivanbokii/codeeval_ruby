# since it's pretty easy task (just use downcase method)
# lets do this challenge another way

def lowercase(input)
  result = input.split("").map do |char|
    char = (char.ord + 32).chr if "A".ord <= char.ord and char.ord <= "Z".ord
    char
  end

  result.join
end

while line = gets
  puts lowercase(line)
end