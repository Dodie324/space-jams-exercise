require 'pry'

class Album
  def initialize(id, album_name, artists)
    @id = id
    @album_name = album_name
    @artists = artists
    @tracks = []
  end

  def summary
    "\nName: #{album_title}\nArtist(s): #{artists}\nDuration (min.): #{album_duration}\n\nTracks:\n#{list_of_tracks}"
  end

  def id
    @id
  end

  def album_title
    @album_name
  end

  def artists
    @artists
  end

  def tracks
    @tracks
  end

  def list_of_tracks
    track_list = ''
    @tracks.each do |track|
      track_list << "- #{track[:title]}\n"
    end

    track_list
  end

  def album_duration
    total_duration_time = 0
    @tracks.each do |track|
      total_duration_time += track[:duration_ms].to_f
    end

    min = (total_duration_time / 60000).round(2)
  end
end
