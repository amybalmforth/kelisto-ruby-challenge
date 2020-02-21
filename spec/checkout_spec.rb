require 'checkout'

describe Checkout do
  let(:checkout) { described_class.new }
  let(:item) { Item.new('GR1', 'Green tea', '£3.11') }
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
  describe 'total method' do
    it 'can total all item prices' do
      checkout.scan(item)
      expect(checkout.total).to eq "£3.11"
    end
  end
end
