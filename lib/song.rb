class Song 
  attr_accessor :name
  attr_reader :artist
  @@all = []
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def artist=(artist)
    @artist = artist
    artist.songs << self
  end 
  
  def self.new_by_filename(filename)
    name = filename.split("-")[1].strip
    self.new(name)
  end 
  
  def self.all
    @@all
  end 
end 