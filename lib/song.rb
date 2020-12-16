

require 'pry'
class Song
    attr_accessor :name, :artist
    attr_writer :artist_name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self 
    end
    def self.all
        @@all
    end
    def self.new_by_filename(filename)
        file = filename.split(" - ")
        song = file[1]
        artist = file[0]
        # binding.pry
        new_instance = self.new(song)
        new_instance.artist_name = artist
        new_instance
        # binding.pry
        
        # song = self.new(file[1])
        # artist = Artist.find_or_create_by_name(file[0])
        # song.artist = artist
        # artist.add_song(song)
        # song
    end
    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
   
    end
end