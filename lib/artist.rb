require 'pry'
class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|i| i.artist == self}
    end

    def add_song(song)
        song.artist = self
    end


    def self.find_or_create_by_name(name)
        #take the name passed in (a string), and Find the artist instance 
        #that has that name 
        #or create one if it doesn't exist. 
        #Either way, the return value will be an instance of an artist with 
        #the name attribute filled out.
      #  binding.pry
        if self.all.include?(name)
            name
        else
            new_creation = Artist.new(name)
            new_creation
        end
    end



        
end