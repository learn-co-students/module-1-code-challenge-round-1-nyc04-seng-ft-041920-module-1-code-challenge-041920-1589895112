class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end
  
  reviewed_movie?(movie) = if (viewer +movie) = true #attempt at pseudocode
  else = false

  end
end
