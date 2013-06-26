require "test/unit"
require_relative "file_size"

class TestFileSize < Test::Unit::TestCase
  def test_returns_file_size_in_bytes
    result = file_size("test_input")

    assert_equal(22, result)
  end
end