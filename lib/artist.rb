require 'pry'

class Artist
    attr_accessor :name, :songs
    @@all = []
    def initialize(name)
        @name = name
        @songs = []
        self.save
    end

    def self.all 
        @@all
    end

    def add_song(song_object)
        @songs << song_object
    end

    def save
        @@all << self
    end

    def self.find_or_create_by_name(name)
        found_artist = @@all.find{|artist| artist.name == name}
        if !found_artist
            Artist.new(name)
        else
            found_artist
        end
    end

    def print_songs
        @songs.each do |song|
            puts song.name
        end
    end
end