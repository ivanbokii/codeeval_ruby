require 'prime'

def sum_of_primes(n)
  Prime.first(n).reduce(:+)
end