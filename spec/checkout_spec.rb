require "checkout"

describe Checkout do
  describe "creating a new checkout" do
    it "class checkout has scan method" do
      expect(subject.scan("item")).to eq []
    end
  end
end
