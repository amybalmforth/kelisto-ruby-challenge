class PricingCeo
  attr_reader :items

  def initialize
    @items = []
  end

  def calculate_price
    receipt = []
    @items.select do |item|
      receipt << item.price.delete('£').to_f
    end
    '£' + receipt.inject(:+).to_s
  end


end
