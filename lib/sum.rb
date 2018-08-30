class Sum

  def initialize(augend, addend)
    @augend = augend
    @addend = addend
  end

  def plus(value)
    Sum.new(value, self)
  end

  def times(multiplier)
    Sum.new(augend.times(multiplier), addend.times(multiplier))
  end

  def reduce(bank, to)
    reduced_addend = addend.reduce(bank, to).amount
    reduced_augend = augend.reduce(bank, to).amount
    Money.new(reduced_addend + reduced_augend, to)
  end

  attr_reader :augend
  attr_reader :addend
  attr_reader :currency

end