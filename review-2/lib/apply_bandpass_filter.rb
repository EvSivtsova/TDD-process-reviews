def apply_bandpass_filter(music_track, lower_limit, upper_limit)
  music_track.map do |frequency|
    raise 'The frequencies must be positive whole numbers' if frequency.negative?
    frequency = frequency.integer? ? frequency : frequency.round
    if frequency > upper_limit
      upper_limit
    elsif frequency < lower_limit
      lower_limit
    else
      frequency
    end
  end
end
