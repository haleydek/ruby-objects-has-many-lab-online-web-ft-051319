class Artist
  attr_accessor :name
  @@songs = []
  
  def initialize(name)
    @name = name
  end
  
  def add_song(song)
    @@songs << song.name
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @@songs << song.name
    song.artist = self
  end
  
end