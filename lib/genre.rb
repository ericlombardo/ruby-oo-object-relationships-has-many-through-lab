class Genre
  attr_accessor :name

  @@all = []  # keeps track of all genres
  def initialize(name)
    @name = name  # starts with genre name
    @@all << self # pushes each instance to @@all array
  end

  def self.all  # getter method for @@all
    @@all
  end

  def songs #=> all songs linked to genre
    Song.all.select {|song| song.genre == self}
  end

  def artists #=> all artist linked to genre through songs
    songs.map {|song| song.artist}
  end
end
