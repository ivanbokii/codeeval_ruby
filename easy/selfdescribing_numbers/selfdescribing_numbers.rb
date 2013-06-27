def get_hash_with_occurrences(number)
  result = {}

  (
    digit = number % 10
    result[digit] = 0 unless result.has_key? digit
    result[digit] += 1

    number = number / 10
  ) until number == 0

  result
end

def selfdescribing_numbers(input)
  #fill hash with number of digits
  #run through each number and check whether hash has the number of occurrences of the position in a number

  occurrences = get_hash_with_occurrences(input)

  input.to_s.split('').each_with_index do |digit, index|
    digit_should_not_be_present = (digit.to_i == 0 and !occurrences.has_key?(index))
    digit_present_and_occurrences_valid = (occurrences.has_key?(index) and occurrences[index] == digit.to_i)

    return 0 unless (digit_should_not_be_present or digit_present_and_occurrences_valid)
  end

  1
end