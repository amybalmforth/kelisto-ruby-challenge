require 'pricing'

describe Pricing do
  let(:pricing) { described_class.new }
  let(:checkout) { Checkout.new(pricing) }
  let(:tea) { Item.new('GR1', 'Green tea', '£3.11') }
  let(:strawbs) { Item.new('SR1', 'Strawberries', '£5.00') }
  let(:coffee) { Item.new('CF1', 'Coffee', '£11.23') }
  describe 'new pricing instance' do
    it 'pricing initialised with empty array for items' do
      expect(pricing.items.length).to eq 0
    end
  end

  # Basket: GR1,SR1,GR1,GR1,CF1
  # Total price expected: £22.45
  #
  # Basket: GR1,GR1
  # Total price expected: £3.11
  #
  # Basket: SR1,SR1,GR1,SR1
  # Total price expected: £16.61

  describe 'calculate_price method' do
    it 'pricing '
  end
end
