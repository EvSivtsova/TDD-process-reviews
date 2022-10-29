def apply_bandpass_filter(music_track, lower_limit, upper_limit)
  music_track.map do |frequency|
    if frequency > upper_limit
      50
    else
      frequency > lower_limit ? frequency : lower_limit
    end
  end
end
