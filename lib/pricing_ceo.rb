class PricingCeo
  attr_reader :items

  def initialize
    @items = []
  end

  def calculate_price
    receipt = []
    tea_quantity = 0
    @items.map do |item|
      if item.code == 'GR1'
        tea_quantity += 1
      end
    end
    @items.select do |item|
      receipt << item.price.delete('£').to_f
    end
    total_price = receipt.inject(:+)
    if tea_quantity == 2
      total_price -= 3.11
    end
    '£' + total_price.to_s
  end


end
