require "pry"

class Artist
    attr_accessor :name, :song

    @@all =[]
   
    def initialize(name)
        @name = name
        @song = []
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
         artist = self.new(name).save
         self
    end 

end 