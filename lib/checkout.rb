require_relative "item"

class Checkout
  attr_reader :items

  def initialize
    @items = []
  end

  def scan(item)
    @items.push(item)
  end

  def total
    receipt = []
    @items.select do |item|
      receipt << item.price.delete("£").to_f
    end
    return "£" + receipt.inject(:+).to_s
  end


end
