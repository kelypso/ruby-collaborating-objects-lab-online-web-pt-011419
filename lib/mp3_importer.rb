# parse a directory of files and send files to song class to 
# create a lib of music with unique artists

class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files # collects file path, converts to string, and removes
    # directory part from filename
    @files = Dir.glob("#{@path}/*.mp3").collect{|file| file.gsub("#{@path}/", "")}
  end
  
  def import # iterate over each file and import to song class using
    # Song.new_by_filename
    self.files.each{|file| Song.new_by_filename(file)}
  end
end