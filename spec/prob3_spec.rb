
require "prob3"

RSpec.describe StringWrapper do
  describe "#reverse" do
    it "reverses the string" do
      wrap = StringWrapper.new('string')
      expect(wrap.reverse).to eq "string".reverse
    end
  end

  describe "#upcase" do
    it "converts the string to uppercase" do
      wrap = StringWrapper.new('dog')
      expect(wrap.upcase).to eq "dog".upcase
    end
  end

  describe "#downcase" do
    it "converts the string to lowercase" do
      wrap = StringWrapper.new('WOW')
      expect(wrap.downcase).to eq "WOW".downcase
    end
  end
end
