class Checkout
  attr_reader :pricing_rules

  def initialize(pricing_rules)
    @pricing_rules = pricing_rules
  end

  def scan(item)
    @pricing_rules.items.push(item)
  end

  def total
    @pricing_rules.calculate_price
  end
end
