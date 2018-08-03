class Franc < Money
  @amount

  def times(times)
    Money.franc(@amount * times)
  end
end