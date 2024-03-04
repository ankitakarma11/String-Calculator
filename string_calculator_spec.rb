require_relative 'string_calculator'

describe StringCalculator do
   context "when given an empty string" do
    it "returns 0" do
      expect(StringCalculator.add("")).to eq(0)
    end
  end
end