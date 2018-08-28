class Pair

  def initialize(from, to)
    @from = from
    @to = to
  end

  def equals(a_pair)
    a_pair.to == to && a_pair.from == from
  end

  def hash
    "#{from}#{to}"
  end

  attr_reader :to
  attr_reader :from

end