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
    genre_count = {}

=begin
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
=end

  @@genres.each_with_object (genre_count){
    |genre| genre_count[genre] += 1
  }
  genre_count

  end

  def self.artist_count

  end

end
