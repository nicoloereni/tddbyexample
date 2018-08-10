class Money

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def self.dollar(amount)
    new(amount, 'USD')
  end

  def self.franc(amount)
    new(amount, 'CHF')
  end

  def equals(money)
    if money.currency == currency
      money.amount == @amount
    else
      false
    end
  end

  def times(times)
    if currency == 'USD'
      Money.dollar(amount * times)
    else
      Money.franc(amount * times)
    end
  end

  attr_reader :currency

  protected

  attr_reader :amount
end