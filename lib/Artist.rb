require "pry"

class Artist
    attr_accessor :name, :songs

    @@all =[]
   
    def initialize(name)
        @name = name
        @songs = []
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
         artist = self.new(name).save
         self
    end 

    def add_song(song)
        if song.artist == nil
           song.artist = self
        end         
        if !@songs.include?(song)
           @songs << song 
        end 
    end 

    # def add_song(song)
    #     song.artist = self unless song.artist
    #     songs << song unless songs.include?(song)
    #   end
    

    def genres 
       @songs.collect {|song| song.genre}.uniq       
    end 
        
    
end 