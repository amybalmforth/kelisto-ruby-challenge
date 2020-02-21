class Checkout
  attr_reader :items

  def initialize
    @items = []
  end

  def scan(item)
    item
  end


end
