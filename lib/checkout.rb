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
    @items.map do |item|
      return item.price
    end
  end


end
