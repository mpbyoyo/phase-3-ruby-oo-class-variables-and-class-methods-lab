class Song
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  end
  attr_reader :name
  attr_reader :artist
  attr_reader :genre

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
    result = {}
    @@genres.length.times do |i|
      result["#{@@genres[i]}"] = result["#{@@genres[i]}"] ? result["#{@@genres[i]}"] + 1 : 1
    end
    result
  end

  def self.artist_count
    result = {}
    @@artists.length.times do |i|
      result["#{@@artists[i]}"] = result["#{@@artists[i]}"] ? result["#{@@artists[i]}"] + 1 : 1
    end
    result
  end
end