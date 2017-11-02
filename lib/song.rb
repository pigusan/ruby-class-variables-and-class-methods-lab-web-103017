class Song

  attr_accessor :name, :artist, :genre

  #class variable
  @@count = 0
  @@artists = []
  @@genres = []


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

  def self.genre_count #why?
    hash = Hash.new(0)
    @@genres.each do |genre|
      hash[genre] += 1
    end
    hash
  end

  def self.artist_count #why?
    hash = Hash.new(0)
    @@artists.each do |artist|
      hash[artist] += 1
    end
    hash
  end
end
