def apply_bandpass_filter(music_track, lower_limit, upper_limit)
  music_track.map do |frequency| 
    if frequency > lower_limit
      frequency
    else
      lower_limit
    end 
  end
end