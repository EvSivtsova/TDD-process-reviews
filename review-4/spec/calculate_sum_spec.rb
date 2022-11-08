require 'calculate_sum'

describe "calculate_sum" do
  context "if the input is a string with one number" do
    it "returns 1 if the input is '1'" do
      input = "1"
      result = calculate_sum(input)
      expect(result).to eq ["1", 1]
    end

    it "returns 2 if the input is '2'" do
      input = "2"
      result = calculate_sum(input)
      expect(result).to eq ["2", 2]
    end

    it "returns 3 if the input is '3'" do
      input = "3"
      result = calculate_sum(input)
      expect(result).to eq ["3", 3]
    end
  end

  context "if the input is a string of sum of two numbers" do
    it "returns the sum and result if the input is '1 + 1'" do
      input = "1 + 1"
      result = calculate_sum(input)
      expect(result).to eq ["1 + 1", 2]
    end

    it "returns the sum and result if the input is '1 - 1'" do
      input = "1 - 1"
      result = calculate_sum(input)
      expect(result).to eq ["1 - 1", 0]
    end

    it "returns the sum and result if the input is '2 - 1'" do
      input = "2 / 1"
      result = calculate_sum(input)
      expect(result).to eq ["2 / 1", 2]
    end

    it "returns the sum and result if the input is '2 + 1'" do
      input = "2 + 1"
      result = calculate_sum(input)
      expect(result).to eq ["2 + 1", 3]
    end

    it "returns the sum and result if the input is '2 - 1'" do
      input = "2 - 1"
      result = calculate_sum(input)
      expect(result).to eq ["2 - 1", 1]
    end

    it "returns the sum and result if the input is '4 / 2'" do
      input = "4 / 2"
      result = calculate_sum(input)
      expect(result).to eq ["4 / 2", 2]
    end

    it "returns the sum and result if the input is '6 / 2'" do
      input = "6 / 2"
      result = calculate_sum(input)
      expect(result).to eq ["6 / 2", 3]
    end
    
    it "returns the sum and result if the input is '2 * 2'" do
      input = "2 * 2"
      result = calculate_sum(input)
      expect(result).to eq ["2 * 2", 4]
    end
  end 
end