class Review
  attr_accessor :rating
  attr_reader :viewer, :movie

  @@all = []

  def initialize(viewer, movie, rating)
    @viewer = viewer
    @movie = movie
    @rating = rating
    self.class.all << self
  end

  def viewer
    @viewer
  end

  def movie
    @movie
  end

  # def find_viewer_or_create()

  # end

  def self.all
    @@all
  end
end
