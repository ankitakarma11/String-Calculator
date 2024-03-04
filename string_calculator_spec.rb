require_relative 'string_calculator'

describe StringCalculator do
  context "when given an empty string" do
    it "returns 0" do
      expect(StringCalculator.add("")).to eq(0)
    end
  end

  context "when given a single number" do
    it "returns the number" do
      expect(StringCalculator.add("1")).to eq(1)
    end
  end

  context "when given two numbers seperated by comma" do
    it "returns the sum of the numbers" do
      expect(StringCalculator.add("3, 2")).to eq(5)
    end
  end

  context "when given negative numbers" do
    it "raises an exception with the negative numbers" do
      expect { StringCalculator.add("7,-5,-6") }.to raise_error("Negative numbers not allowed: -5,-6")
    end
  end
end