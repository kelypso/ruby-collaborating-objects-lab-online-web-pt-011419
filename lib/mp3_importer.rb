# parse a directory of files and send files to song class to 
# create a lib of music with unique artists

class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files # parse filenames; how to get a list of files in a 
  # directory? only get mp3 files!
    @files = Dir.glob("#{@path}/*.mp3").collect{|file| file.gsub(""
  end
  
  def import # import files to song class
    
  end
end


























=begin
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir.new(self.path).each do |file|
      files << file if file.length > 4
    end
    files
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end