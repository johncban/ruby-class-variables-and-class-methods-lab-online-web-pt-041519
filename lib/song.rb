class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = Array.new
  @@artists = []

  def initialize(name, artist, genre)
    @@genres << genre
    @@count +=1
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end

  def self.genres
    # Source: https://apidock.com/ruby/Array/uniq
    @@genres.uniq
  end

  def self.artists
    # Source: https://apidock.com/ruby/Array/uniq
    @@artists.uniq
  end

  def self.genre_count
    genre_count = Hash.new(0)

    # Source: https://ruby-doc.org/core-2.6.3/Enumerable.html#method-i-each_with_object
    @@genres.each_with_object({}) {
      |genre| genre_count[genre] += 1
    }

    genre_count

  end

  def self.artist_count

    artist_count = Hash.new(0)


    @@artists.each_with_object({}) {
      |artist| artist_count[artist] += 1
    }

    artist_count

  end

end
