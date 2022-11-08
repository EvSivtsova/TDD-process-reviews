require 'sum_calculator'

describe "SumCalculator" do
  context "if the input is a string with one number" do
    it "returns 1 if the input is '1'" do
      input = "1"
      sum_calculator = SumCalculator.new(input);
      expect(sum_calculator.get_resulting_value).to eq ["1", 1]
    end

    it "returns 2 if the input is '2'" do
      input = "2"
      sum_calculator = SumCalculator.new(input);
      expect(sum_calculator.get_resulting_value).to eq ["2", 2]
    end

    it "returns 3 if the input is '3'" do
      input = "3"
      sum_calculator = SumCalculator.new(input);
      expect(sum_calculator.get_resulting_value).to eq ["3", 3]
    end
  end

  context "if the input is a string of sum of two numbers" do
    it "returns the sum and result if the input is '1 + 1'" do
      input = "1 + 1"
      sum_calculator = SumCalculator.new(input);
      expect(sum_calculator.get_resulting_value).to eq ["1 + 1", 2]
    end

    it "returns the sum and result if the input is '1 - 1'" do
      input = "1 - 1"
      sum_calculator = SumCalculator.new(input);
      expect(sum_calculator.get_resulting_value).to eq ["1 - 1", 0]
    end
  end 
end