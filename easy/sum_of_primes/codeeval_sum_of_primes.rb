require 'prime'

def sum_of_primes(n)
  Prime.first(n).reduce(:+)
end

p sum_of_primes(1000)