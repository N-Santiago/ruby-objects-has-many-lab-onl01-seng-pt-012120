class Artist 
  attr_accessor :name, :songs 
  
  @@song_count = 0 
  
  def initialize(name)
    @name = name
    @songs = [] 
  end 
  
  def add_song(song) 
    songs << song
    song.artist = self
    @@song_count += 1 
  end 
  
  def add_song_by_name(name)
    song = Song.new(name)
    songs << song 
    song.artist = self
    @@song_count += 1
  end 
  
  def songs 
     Song.all.select {|song| self} #selecting all songs from specific artirts
  end 
    
  def self.song_count #correct syntax calling self on the method. 
    Song.all.count 
  end 
  
end 