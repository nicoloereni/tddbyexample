require 'pair.rb'

class Bank

  def initialize
    @hashes = {}
  end


  def reduce(source, currency)
    source.reduce(self, currency)
  end

  def rate(from, to)
    value = hashes[Pair.new(from, to).hash]
    value.nil? ? 1 : value
  end

  def add_rate(from, to, value)
    hashes[Pair.new(from, to).hash] = value
  end

  attr_accessor :hashes

end