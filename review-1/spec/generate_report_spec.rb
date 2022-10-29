require 'generate_report'

describe 'returns the colours and the count' do
  context 'there is only one colour: "Green"' do
    it 'returns "Green: 1"' do
      results = 'Green'
      expect(generate_report(results)).to eq 'Green: 1'
    end

    it 'returns "Green: 2"' do
      results = 'Green, Green'
      expect(generate_report(results)).to eq 'Green: 2'
    end

    it 'returns "Green: 3"' do
      results = 'Green, Green, Green'
      expect(generate_report(results)).to eq 'Green: 3'
    end
  end

  context 'there are several colours' do
    it 'returns "Green: 2\nRed: 1\n"' do
      results = 'Green, Green, Red'
      expect(generate_report(results)).to eq 'Green: 2\nRed: 1'
    end

    it 'sorts colours from Green to Red' do
      results = 'Green, Green, Red, Amber, Red'
      expect(generate_report(results)).to eq 'Green: 2\nAmber: 1\nRed: 2'
    end
  end

  context 'input string values other than Green, Amber and Red' do
    it "raises error" do
      results = 'Extra, 5'
      expect { generate_report(results) }.to raise_error 'The grades can be only Green, Amber and Red'
    end
  end
end
