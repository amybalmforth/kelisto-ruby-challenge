require 'item'

describe Item do
  let(:item) { described_class.new("GR1", "Green tea", "£3.11") }
  describe "creating new item" do
    it "has a product code" do
      expect(item.code).to eq "GR1"
    end
    it "has a name" do
      expect(item.name).to eq "Green tea"
    end
    it "has a price" do
      expect(item.price).to eq "£3.11"
    end
  end
end
