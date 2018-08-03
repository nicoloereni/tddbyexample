class Franc < Money
  @amount

  def initialize(amount)
    @amount = amount
  end

  def times(times)
    Franc.new(@amount * times)
  end
end