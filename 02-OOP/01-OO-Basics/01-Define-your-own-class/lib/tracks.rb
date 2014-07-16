class Tracks
  attr_accessor :artist
  attr_accessor :title
  attr_accessor :duration

  def initialize(artist, title, duration)
    @artist = artist
    @title = title
    @duration =duration
  end
end

bob = Tracks.new("Bob Marley" , "crazy baldheads ", "3min14")
sia = Tracks.new("Sia", "chadelier","3min52")