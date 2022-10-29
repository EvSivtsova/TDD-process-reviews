def apply_bandpass_filter(music_track, lower_limit, upper_limit)
  music_track.map do |frequency|
    frequency > lower_limit ? frequency : lower_limit
  end
end
