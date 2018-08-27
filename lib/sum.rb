class Sum

  def initialize(augend, addend)
    @augend = augend
    @addend = addend
  end

  def reduce(currency)
    Money.new(addend.amount + augend.amount, currency)
  end

  attr_reader :augend
  attr_reader :addend

end