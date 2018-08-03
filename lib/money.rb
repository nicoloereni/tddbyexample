class Money

  def initialize (amount)
    @amount = amount
  end

  def self.dollar(amount)
    Dollar.new(amount)
  end

  def self.franc(amount)
    Franc.new(amount)
  end

  def equals(money)
    if money.is_a? self.class
      money.amount == @amount
    else
      false
    end
  end

  protected
  attr_reader :amount
end