require 'sum.rb'

class Bank

  def initialize; end

  def reduce(sum, currency)
    Money.new(sum.addend.amount + sum.augend.amount, currency)
  end
end