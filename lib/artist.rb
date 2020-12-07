class Artist
  attr_accessor :name 

  @@all = []  # keeps all instances of Artist
  def initialize(name)  
    @name = name  # starts with name
    @@all << self # pushes all instances to @@all array
  end

  def self.all  # getter method for @@all
    @@all
  end

  def songs #=> all songs related to artist
    Song.all.select {|song| song.artist == self}
  end

  def new_song(song, genre) # creates new song instance and links song, aritst, and genre
    new_song = Song.new(song, self, genre)
  end 

  def genres  #=> all genres linked to artist through songs
    songs.map {|song| song.genre}
  end

end
