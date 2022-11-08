require 'sum_calculator'

describe "SumCalculator" do
  context "the provide input is in correct format" do
    it "returns 1 if the input is '1'" do
      input = "1"
      sum_calculator = SumCalculator.new(input);
      expect(sum_calculator.get_resulting_value).to eq ["1", 1]
    end
  end
end