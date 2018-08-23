require 'expression.rb'

class Sum < Expression

  def initialize(augend, addend)
    @augend = augend
    @addend = addend
  end

  attr_reader :augend
  attr_reader :addend

end