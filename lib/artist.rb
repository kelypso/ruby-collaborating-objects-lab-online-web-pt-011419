class Artist
  attr_accessor :name, :songs
  
  @@all =[] # holds all artists in the class
  
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
    found = self.all.find {|artist| artist.name == artist_name}
    if found
      found
    else
      new = self.new(artist_name)
      new.save
      new
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end