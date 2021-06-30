require 'pry'
class MP3Importer

    attr_accessor :path

def initialize(path)    
    @path = path
end

def files
   files = Dir.entries(path)
   files.select {|i| i.include?(".mp3")}
end

def import
    files.each{|i| Song.new_by_filename(i)}
 #binding.pry
end



end