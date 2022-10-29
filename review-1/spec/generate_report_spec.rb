require 'generate_report'

describe 'returns the colours and the count' do
  context 'there is only one colour: "Green"' do
    it 'returns "Green: 1' do
      results = 'Green'
      expect(generate_report(results)).to eq 'Green: 1'
    end

    it 'returns "Green: 2' do
      results = 'Green, Green'
      expect(generate_report(results)).to eq 'Green: 2'
    end
  end
end