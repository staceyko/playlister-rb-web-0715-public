class Artist

@@all_artists = []

attr_accessor :name, :songs, :genres
  def initialize
    @songs = []
    @genres = []
    @@all_artists << self
end

def self.reset_artists
  @@all_artists.clear
end

def self.all
  @@all_artists
end

def self.count
  @@all_artists.count
end

require 'pry'
  def add_song(song)
    @songs << song
    @genres << song.genre
      song.genre.artists << self if song.genre
    # if song.genre

    #     song.genre.artists << self
         # binding.pry
  end


end





# # Song
# # belongs_to :artist
# # belongs_to :genre

# # Artist
# # has_many :songs
# # has_many :genres, through: songs


# # Genre
# # has_many :songs
# # has_many artists, through: songs



# class Artist



# attr_accessor :name, :songs, :genres

# @@all = []
# #if you have a class and trying to keep track of all the instances of the class, we are going to create self.all and have some sort of an array that keeps track of every instance.
#   def initialize
#     @@all << self
#     @songs = []
#     @genres = []
#   end

#   def add_song(song)
#     @songs << song
#     song.artist = self
#     if song.genre #put if statement, because we don't want to do this if its nil, if there is no genre.
#       song.genre.artists << self
#       self.genres << song.genre #self is song.artist
#     end

#     song

#   end

#   def add_songs(song_array)
#     songs_array.each {|song| add_song(song)}
#   end
#   def self.all
#     @@all
#   end

#   def self_reset_all
#     self.all.clear
#   end
#   def self.count
#     self.all.count
#   end



#   def self.find_by_name(artist_name)
#     self.all.find{|artist| artist.name == artist_name}
#   end

#   def self.create_by_name(artist_name)
#     artist = Artist.new #can also do artist = self.new
#     artist.name = artist_name
#     artist

#   end
# end
# # class Artist

# #   attr_accessor :name, :artists, :genres

# # @@artists = []

# #   def self.reset_artists
# #     @@artists.clear
# #   end

# #   def self.count
# #     @@artists.length
# #   end

# #   def self.all
# #     @@artists
# #   end
# #   def initialize
# #     @name = name
# #     @songs = []
# #     @@artists << self
# #     @genres = []
# #   end

# #   def add_song(song)
# #     @songs << song
# #     @genres << song.genre

# #   end

# # end
