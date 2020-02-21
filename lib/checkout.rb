require_relative 'item'

class Checkout
  attr_reader :items, :pricing_rules

  def initialize(pricing_rules)
    @items = []
    @pricing_rules = pricing_rules
  end

  def scan(item)
    @items.push(item)
  end

  def total
    receipt = []
    @items.select do |item|
      receipt << item.price.delete('£').to_f
    end
    '£' + receipt.inject(:+).to_s
  end
end
