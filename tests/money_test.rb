require './lib/money.rb'
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
    five = Money.dollar(5)

    assert_true(Money.dollar(10).equals(five.times(2)))
    assert_true(Money.dollar(15).equals(five.times(3)))
  end

  def test_franc_multiplication
    five = Money.franc(5)

    assert_true(Money.franc(10).equals(five.times(2)))
    assert_true(Money.franc(15).equals(five.times(3)))
  end

  def test_equality
    assert_true(Money.dollar(5).equals(Money.dollar(5)))
    assert_true(Money.franc(5).equals(Money.franc(5)))

    assert_false(Money.dollar(5).equals(Money.dollar(6)))
    assert_false(Money.franc(5).equals(Money.franc(6)))

    assert_false(Money.franc(5).equals(Money.dollar(5)))
  end

  def test_currency
    assert_equal('USD', Money.dollar(1).currency)
    assert_equal('CHF', Money.franc(1).currency)
  end

end
