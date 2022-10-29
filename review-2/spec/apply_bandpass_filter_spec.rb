require 'apply_bandpass_filter'

describe '#bandpass filter' do
  context 'the frequencies are within range' do
    it 'returns a single frequency in an array' do
      music_track = [45]
      lower_limit = 20
      upper_limit = 50
      result = apply_bandpass_filter(music_track, lower_limit, upper_limit)
      expect(result).to eq [45]
    end
  end
end