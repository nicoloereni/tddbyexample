class Money

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