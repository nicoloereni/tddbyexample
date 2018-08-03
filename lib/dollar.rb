require './lib/money.rb'

class Dollar < Money
  @amount

  def initialize(amount)
    @amount = amount
  end

  def times(times)
    Dollar.new(@amount * times)
  end
end