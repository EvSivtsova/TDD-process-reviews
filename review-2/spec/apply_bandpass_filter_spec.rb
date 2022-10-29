require 'apply_bandpass_filter'

describe '#apply_bandpass_filter' do
  context 'the frequencies are within range' do
    it 'returns a single frequency in an array' do
      music_track = [45]
      lower_limit = 20
      upper_limit = 50
      result = apply_bandpass_filter(music_track, lower_limit, upper_limit)
      expect(result).to eq [45]
    end

    it 'returns two frequencies in an array' do
      music_track = [45, 45]
      lower_limit = 20
      upper_limit = 50
      result = apply_bandpass_filter(music_track, lower_limit, upper_limit)
      expect(result).to eq [45, 45]
    end

    it 'returns multiple frequencies in an array' do
      music_track = [45, 45, 45]
      lower_limit = 20
      upper_limit = 50
      result = apply_bandpass_filter(music_track, lower_limit, upper_limit)
      expect(result).to eq [45, 45, 45]
    end
  end

  context 'the frequencies are below range' do
    it 'returns the lower limit as a single frequency in an array' do
      music_track = [10]
      lower_limit = 20
      upper_limit = 50
      result = apply_bandpass_filter(music_track, lower_limit, upper_limit)
      expect(result).to eq [20]
    end

    it 'returns a different lower limit as a frequency in an array' do
      music_track = [10]
      lower_limit = 30
      upper_limit = 50
      result = apply_bandpass_filter(music_track, lower_limit, upper_limit)
      expect(result).to eq [30]
    end
  end
end
