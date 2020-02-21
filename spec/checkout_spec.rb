require 'checkout'

describe Checkout do
  let(:pricing) { Pricing.new }
  let(:checkout) { described_class.new(pricing) }
  let(:tea) { Item.new('GR1', 'Green tea', '£3.11') }
  let(:strawbs) { Item.new('SR1', 'Strawberries', '£5.00') }
  let(:coffee) { Item.new('CF1', 'Coffee', '£11.23') }
  describe 'creating a new checkout' do
    it 'checkout initialised with pricing rules' do
      expect(checkout.pricing_rules).to eq pricing
    end
  end
  describe 'scan method' do
    it 'scanning item adds it to items array' do
      checkout.scan(tea)
      expect(pricing.items).to eq [tea]
    end
  end
  describe 'total method' do
    it 'can total one item price' do
      checkout.scan(tea)
      expect(checkout.total).to eq "£3.11"
    end
    it 'can total two item prices' do
      checkout.scan(tea)
      checkout.scan(tea)
      expect(checkout.total).to eq "£6.22"
    end
  end
end
