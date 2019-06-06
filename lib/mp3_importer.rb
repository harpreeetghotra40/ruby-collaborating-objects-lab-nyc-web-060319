require 'pry'
require_relative 'song'
class MP3Importer
    attr_accessor :path
    def initialize(path)
        @path = path
    end

    def files
        files = Dir["#{path}/*.mp3"]
        newFiles = []
        files.each do |file|
            data = file.split('/')
            newFiles << data[data.length - 1]
        end
        newFiles
    end

    def import
        files.each do |song|
            Song.new_by_filename(song)
        end
    end
    
end