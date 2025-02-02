require 'pry'

class Song

    attr_accessor :artist, :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        parts = filename.split(" - ")
        artist_name = parts[0]
        song_name = parts[1]
       # genre_name = parts[2].chomp(".mp3")
        song = Song.new(song_name)
        song.name = song_name
        song.artist_name= artist_name
        song
    end

    def artist_name=(name)
       new_name = Artist.find_or_create_by_name(name)
        self.artist = new_name
       #binding.pry
    end


end
