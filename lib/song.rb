require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create(name)
    self.New
    self.class.all << name
  end

end

song1 = Song.new
song1.name = "Blank Space"
binding.pry
