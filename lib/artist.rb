class Artist
  attr_accessor :name, :songs
  
  @all =[] # holds all artists in the class
  
  def initialize(name)
    @name = name
    @songs = [] # holds all songs for each artist instance
  end 
  
  def add_song(song) # adds song to song array in artist instance
    @songs << song
  end
  
  def save # saves artist instance to "all" array
    @@all << self 
  end
  
  def self.all # exposes all artist instances
    @@all
  end
  
  def self.find_or_create_by_name(artist_name)
    existing_artist = self.all.find {|artist| artist.name == artist_name}
    if existing_artist
      existing_artist
    else
      new_artist = self.new(artist_name)
      new_artist.save
      new_artist
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end





=begin
class Artist
  attr_accessor :name, :songs
  @@all =[]

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self #saves artist name to the "all" array
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    existing_artist = self.all.find {|artist| artist.name == artist_name}
    if existing_artist
      existing_artist
    else
      new_artist = self.new(artist_name)
      new_artist.save
      new_artist
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end