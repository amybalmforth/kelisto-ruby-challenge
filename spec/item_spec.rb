require 'item'

describe Item do
  let(:item) { described_class.new("GR1") }
  describe "creating new item" do
    it "has a product code" do
      expect(item.code).to eq "GR1"
    end
  end
end
