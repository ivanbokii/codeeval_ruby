require "test/unit"
require_relative "find_writer"

class TestFindWriter < Test::Unit::TestCase
  def test_finds_writer1
    result = find_writer('osSE5Gu0Vi8WRq93UvkYZCjaOKeNJfTyH6tzDQbxFm4M1ndXIPh27wBA rLclpg| 3 35 27 62 51 27 46 57 26 10 46 63 57 45 15 43 53')

    assert_equal("Stephen King 1947", result)
  end

  def test_finds_writer2
    result = find_writer('3Kucdq9bfCEgZGF2nwx8UpzQJyHiOm0hoaYP6ST1WM7Nks5XjrR4IltBeDLV vA| 2 26 33 55 34 50 33 61 44 28 46 32 28 30 3 50 34 61 40 7 1 31')

    assert_equal("Kyotaro Nishimura 1930", result)
  end
end