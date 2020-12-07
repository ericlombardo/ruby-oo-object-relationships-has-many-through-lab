class Song
  attr_accessor :name, :artist, :genre

  @@all = []  # keeps track of all song instances
  def initialize(name, artist, genre) 
    @name = name      # starts with name, artist, and genre
    @artist = artist  # this is single source of truth
    @genre = genre
    @@all << self     # pushes all instance to @@all array
  end

  def self.all  # getter method for @@all 
    @@all
  end
end
