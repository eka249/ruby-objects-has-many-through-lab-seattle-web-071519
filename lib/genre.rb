class Genre
    attr_accessor :name, :artist, :genre
        @@all= []

    def initialize(name)
        @name=name
        @@all<<self
    end


    def self.all
        @@all
    end


    def songs
        Song.all.select do |song|
            song.genre==self
        end
    end

    def artists
        #songs.map(&:artist)
        songs.collect do |song|
            song.artist
        end
    end


end

