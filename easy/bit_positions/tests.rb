require "test/unit"
require_relative "bit_positions"

class TestBitPositions < Test::Unit::TestCase
  def test_bits_same
    result = bit_positions(86, 2, 3)

    assert(result, "Bits are not same")
  end

  def test_bits_not_same
    result = bit_positions(125, 1, 2)

    refute(result, "Bits are same")
  end
end