class Song
  attr_accessor :name
  attr_reader :artist
  @@all = []
  
  def artist=(artist = nil)
    @artist = artist
  end
  
  def initialize(name)
    @name = name
    self.class.all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    self.artist.name
  end
  
end