require "pry"

class Song 
    attr_accessor :name, :artist 

    @@all =[]
   
    def initialize(name, artist = [])
        @name = name
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
         song = self.new(name).save
         self
    end 

    def artist 
        @artist
    end 

end 