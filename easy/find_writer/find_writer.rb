def find_writer(input)
  code, keys = input.split("|")
  keys = keys.split(" ").map(&:to_i)

  keys.map { |k| code[k - 1] }.join
end