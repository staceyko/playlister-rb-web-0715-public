class Song

  attr_accessor :name, :genre, :artist

require 'pry'
  def genre=(genre)
    @genre = genre
    @genre.songs << self
  end

  # def genre=(genre)
  #   @genre = genre
  # end
end

# # Taylor Swift
# songs.includes('Blank Space')
# genres include pop, country, etc..

# # Blank Space
# genre = pop
# artist = tailor swift

# # Pop

# pop.songs.inludes?('Blank Space')
# includes katy perry, blacked eyed peas





# # Song
# # belongs_to :artist
# # belongs_to :genre

# # Artist
# # has_many :songs
# # has_many :genres, through: songs


# # Genre
# # has_many :songs
# # has_many artists, through: songs


# class Song

# attr_accessor :name, :artist

# @@all = []
# #if you have a class and trying to keep track of all the instances of the class, we are going to create self.all and have some sort of an array that keeps track of every instance.
#   def initialize
#     @@all << self
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

#   def self.find_by_name(song_name)
#     self.all.find{|song| song.name == song_name}
#   end

#   def self.create_by_name(song_name)
#     song = Song.new #can also do song = self.new
#     song.name = song_name
#     song

#   end

#   def to_s
#     "#{self.artist.name} - #{self.name} [#{self.genre.name}"
# end

# def genre=(genre)
