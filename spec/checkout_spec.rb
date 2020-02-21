require "checkout"

describe Checkout do
  describe "creating a new checkout" do
    it "checkout initialised with empty array for items" do
      expect(subject.items.length).to eq 0
    end
  end
  describe "scan method" do
    it "scanning item adds it to items array" do
      subject.scan("item")
      expect(subject.items).to eq ["item"]
    end
  end
end
