require "checkout"

describe Checkout do
  describe "creating a new checkout" do
    it "checkout initialised with empty array for items" do
      expect(subject.items).to eq []
    end
  end
  describe "scan method" do
    it "scanning item returns the item" do
      expect(subject.scan("item")).to eq "item"
    end
  end
end
