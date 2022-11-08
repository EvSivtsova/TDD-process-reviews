require 'calculate_sum'

describe 'calculate_sum' do
  context 'if the input is a string with one number' do
    it 'returns 1 if the input is "1"' do
      input = '1'
      result = calculate_sum(input)
      expect(result).to eq ['1', 1]
    end

    it 'returns 2 if the input is "2"' do
      input = '2'
      result = calculate_sum(input)
      expect(result).to eq ['2', 2]
    end

    it 'returns 3 if the input is "3"' do
      input = '3'
      result = calculate_sum(input)
      expect(result).to eq ['3', 3]
    end
  end

  context 'if the input is a string of sum of two integers' do
    it 'returns the sum and result if the input is "1 + 1"' do
      input = '1 + 1'
      result = calculate_sum(input)
      expect(result).to eq ['1 + 1', 2]
    end

    it 'returns the sum and result if the input is "1 - 1"' do
      input = '1 - 1'
      result = calculate_sum(input)
      expect(result).to eq ['1 - 1', 0]
    end

    it 'returns the sum and result if the input is "2 - 1"' do
      input = '2 / 1'
      result = calculate_sum(input)
      expect(result).to eq ['2 / 1', 2]
    end

    it 'returns the sum and result if the input is "2 + 1"' do
      input = '2 + 1'
      result = calculate_sum(input)
      expect(result).to eq ['2 + 1', 3]
    end

    it 'returns the sum and result if the input is "2 - 1"' do
      input = '2 - 1'
      result = calculate_sum(input)
      expect(result).to eq ['2 - 1', 1]
    end

    it 'returns the sum and result if the input is "4 / 2"' do
      input = '4 / 2'
      result = calculate_sum(input)
      expect(result).to eq ['4 / 2', 2]
    end

    it 'returns the sum and result if the input is "6 / 2"' do
      input = '6 / 2'
      result = calculate_sum(input)
      expect(result).to eq ['6 / 2', 3]
    end

    it 'returns the sum and result if the input is "2 * 2"' do
      input = '2 * 2'
      result = calculate_sum(input)
      expect(result).to eq ['2 * 2', 4]
    end

    it 'returns the sum and result if the input is "3 * 2"' do
      input = '3 * 2'
      result = calculate_sum(input)
      expect(result).to eq ['3 * 2', 6]
    end

    it 'returns the sum and result if the input is "3 * 3"' do
      input = '3 * 3'
      result = calculate_sum(input)
      expect(result).to eq ['3 * 3', 9]
    end
  end

  context 'if the input is a string of float number / numbers' do
    it 'returns the sum and result if the input is "1.5"' do
      input = '1.5'
      result = calculate_sum(input)
      expect(result).to eq ['1.5', 1.5]
    end

    it 'returns the sum and result if the input is "1.5 + 1.5"' do
      input = '1.5 + 1.5'
      result = calculate_sum(input)
      expect(result).to eq ['1.5 + 1.5', 3]
    end

    it 'returns the sum and result if the input is "1.5 - 1.5"' do
      input = '1.5 - 1.5'
      result = calculate_sum(input)
      expect(result).to eq ['1.5 - 1.5', 0]
    end

    it 'returns the sum and result if the input is "1.5 * 1.5"' do
      input = '1.5 * 1.5'
      result = calculate_sum(input)
      expect(result).to eq ['1.5 * 1.5', 2.25]
    end

    it 'returns the sum and result if the input is "1.5 / 1"' do
      input = '1.5 / 1'
      result = calculate_sum(input)
      expect(result).to eq ['1.5 / 1', 1.5]
    end
  end

  context 'input string contains negative numbers and zero' do
    it 'calculates sum of "-1 + 1"' do
      input = '-1 + 1'
      result = calculate_sum(input)
      expect(result).to eq ['-1 + 1', 0]
    end

    it 'calculates sum of "-1 + -1"' do
      input = '-1 + -1'
      result = calculate_sum(input)
      expect(result).to eq ['-1 + -1', -2]
    end

    it 'calculates sum of "-1 - -1"' do
      input = '-1 - -1'
      result = calculate_sum(input)
      expect(result).to eq ['-1 - -1', 0]
    end

    it 'calculates sum of "-2 * -3"' do
      input = '-2 * -3'
      result = calculate_sum(input)
      expect(result).to eq ['-2 * -3', 6]
    end

    it 'calculates sum of "-6 / -3"' do
      input = '-6 / -3'
      result = calculate_sum(input)
      expect(result).to eq ['-6 / -3', 2]
    end

    it 'raises erros if it is division and the second number is 0 - "6 / 0"' do
      input = '6 / 0'
      expect { calculate_sum(input) }.to raise_error ZeroDivisionError
    end
  end

  context 'the input string contain more than two numbers' do
    it 'calculates sum of "1 + 1 + 1"' do
      input = '1 + 1 + 1'
      result = calculate_sum(input)
      expect(result).to eq ['1 + 1 + 1', 3]
    end

    it 'calculates sum of "2 + 1 + 1"' do
      input = '2 + 1 + 1'
      result = calculate_sum(input)
      expect(result).to eq ['2 + 1 + 1', 4]
    end

    it 'calculates sum of "2 + 2 + 1"' do
      input = '2 + 2 + 1'
      result = calculate_sum(input)
      expect(result).to eq ['2 + 2 + 1', 5]
    end

    it 'calculates sum of "1 + 1 + 1 + 1"' do
      input = '1 + 1 + 1 + 1'
      result = calculate_sum(input)
      expect(result).to eq ['1 + 1 + 1 + 1', 4]
    end

    it 'calculates sum of "2 + 1 + 1 + 1"' do
      input = '2 + 1 + 1 + 1'
      result = calculate_sum(input)
      expect(result).to eq ['2 + 1 + 1 + 1', 5]
    end
  end
end
