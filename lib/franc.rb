class Franc
  @amount

  def initialize(amount)
    @amount = amount
  end

  def times(times)
    Franc.new(@amount * times)
  end

  def equals franc
    franc.amount == @amount
  end

  protected
  def amount
    @amount
  end

end