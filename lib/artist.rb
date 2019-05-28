class Artist
  attr_accessor :songs
  attr_reader :name
  
  def name=(name = nil)
    @name = name
  end
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end
  
  def self.song_count(song)

  end
  
end