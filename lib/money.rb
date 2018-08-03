class Money

  def equals money
    money.amount == @amount
  end

  protected
  def amount
    @amount
  end
end