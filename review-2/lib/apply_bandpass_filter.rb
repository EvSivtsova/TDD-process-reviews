def apply_bandpass_filter(music_track, lower_limit, upper_limit)
  music_track.map do |frequency|
    if frequency > upper_limit
      upper_limit
    elsif frequency < lower_limit
      lower_limit
    else
      frequency
    end

    # return upper_limit if frequency > upper_limit
    # return lower_limit if frequency < lower_limit
    # frequency
    # # return upper_limit if frequency > upper_limit
    # return lower_limit frequency > lower_limit
    # frequency
  end
end
