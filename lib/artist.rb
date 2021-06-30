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
       # binding.pry
        Song.all.select {|i| i.artist == self}
    end

    def add_song(song)
        song.artist = self
    end


    def self.find_or_create_by_name(name)
      found_artist = nil 
      self.all.detect do |i|
        if i.name == name
            found_artist = i
            end
        end
            if !found_artist 
                found_artist = Artist.new(name)
            end
    found_artist
    end

    def print_songs
        self.songs.each {|i| puts i.name}
    end







end