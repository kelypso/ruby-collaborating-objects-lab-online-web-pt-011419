# parse a directory of files and send files to song class to 
# create a lib of music with unique artists

class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files # parse filenames; how to get a list of files in a 
  # directory? only get mp3 files!
    @files = Dir.entries(@path).select{|song| 
  end
  
  def import # import files to song class
    files.each{|song| Song.new_by_filename(filename)}
  end
end


























=begin
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.entries(@path).select {|song| !File.directory?(song) && song.end_with?(".mp3")}
  end

  def import
    files.each {|song| Song.new_by_filename(song)}
  end
end