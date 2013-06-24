require 'prime'

def prime_palindrome(n)
  (1..n).reverse_each do |item|
    return item if Prime.prime?(item) and item.to_s == item.to_s.reverse
  end
end