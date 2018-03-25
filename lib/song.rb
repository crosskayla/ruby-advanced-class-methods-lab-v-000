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

  def self.create
    self.all  << self.new
  end

end

song = Song.create
puts Song.all.include?(song)
binding.pry
