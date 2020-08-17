require "pry"

class Genre
    attr_accessor :name, :songs, :artist

    @@all =[]
   
    def initialize(name)
        @name = name
        @songs = []
        save
    end    

    def self.all
        @@all
    end 

    def self.destroy_all
        @@all = []
    end 

    def save 
        @@all << self
    end 

    def self.create(name)
         genre = self.new(name).save
         self
    end 

    def add_song(song_name) 
        if song_name.genre == nil
            song_name.genre = self 
            @songs << song_name 
        end 
    end 

    def artists
        @songs.collect {|song| song.artist}.uniq
    end 
   
end 