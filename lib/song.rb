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

  def self.new_by_name(song_name)
    self.new.name = song_name
  end

end

song = Song.create
puts Song.all.include?(song)
