require './lib/dollar.rb'
require 'test/unit'

class DollarTest < Test::Unit::TestCase
  # To do:
  # $5 + 10 CHF = $10 if CHF:USD is 2:1
  # $5 * 2 = $10 DONE
  # Money rounding
  def test_multiplication
    five = Dollar.new(5)
    product  = five.times(2)
    assert_equal(10, product.amount)

    product = five.times(3)
    assert_equal(15, product.amount)

  end

end
