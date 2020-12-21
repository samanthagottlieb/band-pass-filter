def music_filter(music_track, low_pass, high_pass)
  filtered_track = []
  
  music_track.each do |freq|
    if freq < low_pass
      freq = low_pass
    end

    filtered_track << freq
  end
  
  filtered_track
end