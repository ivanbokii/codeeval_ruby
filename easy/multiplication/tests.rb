require "test/unit"
require_relative "multiplication"

class TestMultiplication < Test::Unit::TestCase
  def test_produces_mult_table_input_3
    result =  multiplication(3)

    assert_equal([[1,2,3],[2,4,6],[3,6,9]], result)
  end
end