def music_filter(music_track, low_pass = 40, high_pass = 1000)
  filtered_track = []
  corrupted_music_error = 'this music track is corrupted'

  raise corrupted_music_error if music_track.empty?

  music_track.each do |freq|
    raise corrupted_music_error if freq == nil
    
    if freq < low_pass
      freq = low_pass
    elsif freq > high_pass
      freq = high_pass
    end

    filtered_track << freq
  end
  
  filtered_track
end
