class Song

  @@count = 0
  @@artists = []
  @@genres = []

attr_reader :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def count
    @@count
  end

  def artists
    @@artists
  end

  def genres
    @@genres
  end 

end
