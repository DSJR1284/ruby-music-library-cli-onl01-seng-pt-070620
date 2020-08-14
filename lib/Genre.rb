require "pry"

class Genre
    attr_accessor :name, :song, :artist

    @@all =[]
   
    def initialize(name)
        @name = name
        @songs = []
    end    


    def self.all
        @@all
    end 

    def self.destroy_all
        @@all.clear
    end 

    def save 
        @@all << self
    end 

    def self.create(name)
         genre = self.new(name).save
         self
    end 

end 