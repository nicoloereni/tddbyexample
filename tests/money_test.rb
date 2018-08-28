require './lib/money.rb'
require './lib/bank.rb'
require 'test/unit'

class MoneyTest < Test::Unit::TestCase
  # To do:
  #
  # $5 + 10 CHF = $10 if CHF:USD is 2:1
  # Common times
  # Money rounding
  # Equal null
  # HashCode

  def test_multiplication
    five = Money.new(5, 'USD')

    assert_true(Money.new(10, 'USD').equals(five.times(2)))
    assert_true(Money.new(15, 'USD').equals(five.times(3)))
  end

  def test_reduce_sum
    sum = Sum.new(Money.new(5, 'USD'), Money.new(5, 'USD'))
    reduced = Bank.new.reduce(sum, 'USD')
    assert_true(reduced.equals(Money.new(10, 'USD')))
  end

  def test_bank_reduce_money
    Bank.new.reduce(Money.dollar(1), 'USD')
  end

  def test_sum_different_currency
    sum = Money.new(5, 'USD').plus(Money.new(10, 'CHF'))
    bank = Bank.new

    bank.add_rate('CHF', 'USD', 2)
    reduced = bank.reduce(sum, 'USD')
    
    assert_true(reduced.equals(Money.new(10, 'USD')))
  end

  def test_reduce_money_different_currency
    bank = Bank.new
    bank.add_rate('CHF', 'USD', 2)
    assert_true(Money.dollar(5).equals(bank.reduce(Money.franc(10), 'USD')))
  end

  def test_equality
    assert_true(Money.new(5, 'USD').equals(Money.new(5, 'USD')))
    assert_false(Money.new(5, 'CHF').equals(Money.new(6, 'CHF')))
    assert_false(Money.new(5, 'CHF').equals(Money.new(5, 'USD')))
  end

  def test_currency
    assert_equal('USD', Money.new(1, 'USD').currency)
    assert_equal('CHF', Money.new(1, 'CHF').currency)
  end

end
