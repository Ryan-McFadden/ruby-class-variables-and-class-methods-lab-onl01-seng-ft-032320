class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre
    @@count += 1 
    @@genres << genre
    @@artists << artist
  end
  
  def self.count 
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    num_of_songs = {}
    
    @@genres.each do |genre|
      num_of_songs[genre] = @@genres.count(genre)
    end
    num_of_songs
  end
  
  def self.artist_count
    num_of_artists = {}
    
    @@artists.each do |artist|
      num_of_artists[artist] = @@artists.count(artist)
    end
    num_of_artists
  end

end