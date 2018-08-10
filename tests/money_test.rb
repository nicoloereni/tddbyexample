require './lib/money.rb'
require 'test/unit'

class MoneyTest < Test::Unit::TestCase
  # To do:
  #
  # $5 + 10 CHF = $10 if CHF:USD is 2:1
  # Common times
  # Money rounding
  # Equal null
  # HashCode
  # Delete test Franc multiplication
  #
  # Dollar/Franc duplication DONE
  # Common equals DONE
  # Francs != Dollars DONE
  # 5 CHF * 2 = 10 CHF DONE
  # $5 * 2 = $10 DONE
  # Equals DONE
  # Currency? DONE

  def test_multiplication
    five = Money.new(5, 'USD')

    assert_true(Money.new(10, 'USD').equals(five.times(2)))
    assert_true(Money.new(15, 'USD').equals(five.times(3)))
  end

  def test_franc_multiplication
    five = Money.new(5, 'CHF')

    assert_true(Money.new(10, 'CHF').equals(five.times(2)))
    assert_true(Money.new(15, 'CHF').equals(five.times(3)))
  end

  def test_equality
    assert_true(Money.new(5, 'USD').equals(Money.new(5, 'USD')))
    assert_true(Money.new(5, 'CHF').equals(Money.new(5, 'CHF')))

    assert_false(Money.new(5, 'USD').equals(Money.new(6, 'USD')))
    assert_false(Money.new(5, 'CHF').equals(Money.new(6, 'CHF')))

    assert_false(Money.new(5, 'CHF').equals(Money.new(5, 'USD')))
  end

  def test_currency
    assert_equal('USD', Money.new(1, 'USD').currency)
    assert_equal('CHF', Money.new(1, 'CHF').currency)
  end

end
