class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def new_by_filename(filename) # parse filename for song and artist
    artist = filename.split(" - ")[0] # separate artist name
    song = filename.split(" - ")[1] # separate song name
    new_song = self.new(song) # create a new instance of this song
    new_song.artist = artist # set this song's artist to the artist
    new_song
  end
  
  def artist_name=(name)
    # takes song artist string and finds/creates artist object
    self.artist = Artist.find_or_create_by_name(artist)
    # adds song instance to array in artist instance
    artist.add_song(self)
  end
end









=begin
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song = file_name.split(" - ")[1]
    artist = file_name.split(" - ")[0]
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end