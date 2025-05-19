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
    it "supports custom single-character delimiter" do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end
    it "raises an exception when negative numbers are present" do
     expect {
       StringCalculator.add("1,-2,3,-5")
     }.to raise_error("negatives not allowed: -2, -5")
   end

   it "ignores numbers greater than 1000" do
    expect(StringCalculator.add("2,1001,6")).to eq(8)
   end
   it "supports custom delimiter of any length like //[*]\n1*2" do
      expect(StringCalculator.add("//[***]\n1***2***3")).to eq(6)
   end


 end
end