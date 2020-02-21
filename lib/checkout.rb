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
      receipt << item.price
    end
    return receipt.join("")
  end


end
