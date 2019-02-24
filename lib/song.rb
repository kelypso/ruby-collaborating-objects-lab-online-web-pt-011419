class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  
  def self.new_by_filename(filename) # class method to parse filename for song and artist
    song = filename.split(" - ")[1] # remove .mp3 and separate song name 
    artist = filename.split(" - ")[0] # separate artist name
    new_song = self.new(song) # create a new instance of this song
    new_song.artist_name = artist # set this song's artist to the artist using artist=
    new_song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name) # takes song artist string and finds/creates artist object
    artist.add_song(self) # adds song instance to array in artist instance
  end
end