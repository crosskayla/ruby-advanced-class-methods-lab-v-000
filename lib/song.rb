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
    placeh = self.new
    @@all << placeh
    return placeh
  end

end

song = Song.create
puts Song.all.include?(song)
