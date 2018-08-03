require './lib/money.rb'

class Dollar < Money
  @amount

  def times(times)
    Money.dollar(@amount * times)
  end
end