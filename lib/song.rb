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

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    count = 1
    hash = {}
    @@genres.each do |genre|
      if hash.keys.include?(genre)
        hash[genre] = count + 1 
      else 
        hash[genre] = 1 
      end 
    end 
  end

end
