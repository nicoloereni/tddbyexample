class Dollar
  @amount

  def initialize(amount)
    @amount = amount
  end

  def times(times)
    Dollar.new(@amount * times)
  end

  def amount
    @amount
  end
end