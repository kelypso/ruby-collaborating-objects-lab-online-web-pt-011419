class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def new_by_filename(filename) # parse filename for song and artist
    artist = filename.split(" - ")[0]
    song = filename.split(" - ")[1]
    
  end
  
  def self.artist_name=(name)
    # turns artist's name as string into artist object
    # find artist instance, if it exists, otherwise create
    # send artist str name to artist class
    Artist.find_or_create_by_name(artist)
    # assign song to artist 
    # now that we have artist instance, call Artist.add_song
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