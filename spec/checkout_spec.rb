require 'checkout'

describe Checkout do
  let(:checkout) { described_class.new }
  let(:item) { Item.new("GR1") }
  describe 'creating a new checkout' do
    it 'checkout initialised with empty array for items' do
      expect(checkout.items.length).to eq 0
    end
  end
  describe 'scan method' do
    it 'scanning item adds it to items array' do
      checkout.scan(item)
      expect(checkout.items).to eq [item]
    end
  end
end
