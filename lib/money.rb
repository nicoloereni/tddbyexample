require 'expression.rb'

class Money < Expression

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def equals(money)
    if money.currency == currency
      money.amount == amount
    else
      false
    end
  end

  def times(times)
    Money.create_money(amount * times, currency)
  end

  def plus(money)
    Money.create_money(money.amount + amount, currency)
  end

  attr_reader :currency
  attr_reader :amount

  private

  # @param [integer] amount
  # @param [string] currency
  # @return [Money]
  def self.create_money(amount, currency)
    new(amount, currency)
  end
end