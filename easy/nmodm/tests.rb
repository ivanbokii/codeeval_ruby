require "test/unit"
require_relative "nmodm"

class TestNModM < Test::Unit::TestCase
  def test_returns_modulo
    result = nmodm(20, 6)

    assert_equal(2, result)
  end

  def test_returns_modulo_2
    result = nmodm(2, 3)

    assert_equal(2, result)
  end
end