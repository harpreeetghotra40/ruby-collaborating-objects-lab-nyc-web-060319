require_relative 'artist'
class Song
    attr_accessor :name, :artist
    def initialize(name)
        @name = name
    end

    def self.new_by_filename(name)
        data = name.split(' - ')
        newSong = Song.new(data[1])
        newArtist = Artist.new(data[0])
        newSong.artist = newArtist
        newArtist.add_song(newSong)
        newSong
    end
        
end