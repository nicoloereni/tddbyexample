require './lib/dollar.rb'
require './lib/franc.rb'
require 'test/unit'

class MoneyTest < Test::Unit::TestCase
  # To do:
  #
  # $5 + 10 CHF = $10 if CHF:USD is 2:1
  # Common times
  # 5 CHF * 2 = 10 CHF
  # Money rounding
  # Equal null
  # HashCode
  #
  # Dollar/Franc duplication DONE
  # Common equals DONE
  # Francs != Dollars DONE
  # $5 * 2 = $10 DONE
  # Equals DONE
  # Currency?

  def test_multiplication
    five = Dollar.new(5)

    assert_true(Dollar.new(10).equals(five.times(2)))
    assert_true(Dollar.new(15).equals(five.times(3)))
  end

  def test_franc_multiplication
    five = Franc.new(5)

    assert_true(Franc.new(10).equals(five.times(2)))
    assert_true(Franc.new(15).equals(five.times(3)))
  end

  def test_equality
    assert_true(Dollar.new(5).equals(Dollar.new(5)))
    assert_true(Franc.new(5).equals(Franc.new(5)))
    assert_false(Dollar.new(5).equals(Dollar.new(6)))
    assert_false(Franc.new(5).equals(Franc.new(6)))
    assert_false(Franc.new(5).equals(Dollar.new(5)))
  end

end
