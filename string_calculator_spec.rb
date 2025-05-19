require_relative 'string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end
    it "returns number for single input" do
      expect(StringCalculator.add("1")).to eq(1)
    end
    it "returns the sum of two numbers separated by a comma" do
      expect(StringCalculator.add("1,2")).to eq(3)
    end
    it "returns the sum of an unknown amount of numbers" do
      expect(StringCalculator.add("1,2,3,4,5")).to eq(15)
    end
    it "handles new lines between numbers as delimiters" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

 end
end