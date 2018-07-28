require "./lib/tdd_by_example.rb"
require "test/unit"

class TestTddByExample < Test::Unit::TestCase

  def test_sample
    assert_equal(4, 2+2)
  end

end
