class Dollar
  @amount

  def initialize(amount)
    @amount = amount
  end

  def times(times)
    Dollar.new(@amount * times)
  end

  def equals dollar
    dollar.amount == @amount
  end

  protected
  def amount
    @amount
  end

end