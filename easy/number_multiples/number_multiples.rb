# this is a dumb version since modulo and division operators usage is prohibited
# by definition
def number_multiple(x, n)
  (1..n).find do |number|
    product = number * n
    return product if x <= product
  end
end