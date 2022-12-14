def apply_bandpass_filter(music_track, lower_limit, upper_limit)
  music_track.map do |frequency|
    raise 'The frequencies must be positive whole numbers' if frequency.negative?

    if frequency > upper_limit
      upper_limit
    elsif frequency < lower_limit
      lower_limit
    else
      frequency.integer? ? frequency : frequency.round
    end
  end
end
