# require "pry"

# class Song 
#     attr_accessor :name, :artist, :genre 

#     @@all =[]
   
#     def initialize(name, artist = nil, genre = nil)
#         @name = name
#         if artist != nil
#             self.artist = artist 
#         end 
#         if genre != nil
#             self.genre = genre 
#         end 
#         save 
#     end 

#     def self.all
#         @@all
#     end 

#     def self.destroy_all
#         @@all = []
#     end 

#     def save 
#         @@all << self
#     end 

#     def self.create(name)
#          song = self.new(name).save
#          self
#     end 
    
#     def artist=(artist)
#         @artist = artist 
#         artist.add_song(self)
#     end 

#     def genre=(genre)
#         @genre = genre
#         if !(genre.songs.include?(self))
#         genre.songs << self
#        end      
#     end 

#     def self.find_by_name(name)
#         if self.all.find do |song|
#             song.name == name 
#         end 
#         self
#         else 
#         false
#       end  
#     end 

#     # def self.find_or_create_by_name(name)
#     #    if self.all.find do |song|
#     #     song.name == name
#     #    end
#     #    self
#     #    else self.find_by_name(name) == false
#     #     self.create(name)
#     #    end 
#     # end  

#    def self.find_or_create_by_name(name)
#     if self.all.find do |song|
#         song.name == name
#         end
#         self 
#         # self.find_by_name(name) == true
#         # self
#       else self.find_by_name(name) == false
#         self.create(name)
#       end
#     end 
        


# end 

require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist=nil, genre=nil)
    @name = name
    if artist != nil
      self.artist = artist
    end
    if genre != nil
      self.genre = genre
    end
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
    Song.new(name).save
    self
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end 

  def genre=(genre)
    @genre = genre
    genre.add_song(self)
  end

  def self.find_by_name(name)
    if self.all.find do |song|
      song.name == name
      end
      self
    else
      false
    end  
  end

  def self.find_or_create_by_name(name)
    if self.all.find do |song|
      song.name == name
      end
      self 
      # self.find_by_name(name) == true
      # self
    else self.find_by_name(name) == false
      self.create(name)
    end
  end

end

