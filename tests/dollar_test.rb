require './lib/dollar.rb'
require 'test/unit'

class DollarTest < Test::Unit::TestCase
  # To do:
  # $5 + 10 CHF = $10 if CHF:USD is 2:1
  # $5 * 2 = $10
  def test_multiplication
    five = Dollar.new 5
    five.times 2
    assert_equal(10, five.amount)
  end

end
