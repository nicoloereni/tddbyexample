class Sum

  def initialize(augend, addend)
    @augend = augend
    @addend = addend
  end

  def reduce(bank, to)
    reduced_addend = addend.amount / bank.rate(addend.currency, to)
    reduced_augend = augend.amount / bank.rate(augend.currency, to)
    Money.new(reduced_addend + reduced_augend, to)
  end

  attr_reader :augend
  attr_reader :addend
  attr_reader :currency

end