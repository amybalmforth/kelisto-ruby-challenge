require 'item'

describe Item do
  let(:item) { described_class.new("GR1", "Green tea") }
  describe "creating new item" do
    it "has a product code" do
      expect(item.code).to eq "GR1"
    end
    it "has a product name" do
      expect(item.name).to eq "Green tea"
    end
  end
end
