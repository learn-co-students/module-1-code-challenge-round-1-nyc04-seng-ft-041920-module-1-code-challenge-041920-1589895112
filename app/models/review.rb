class Review
  attr_reader :viewer, :movie, :rating

  @@all = []

  def save
    @@all << self
  end

  def initialize(viewer, movie, rating)
    @viewer = viewer
    @movie = movie
    @rating = rating
    save
  end

  def self.all
    @@all
  end

  def viewer_v
    Viewer.all.select do |vw|
      vw.username == self.viewer.username
    end
  end

  def movie_v
    Movie.all.select do |mv|
      #   binding.pry
      self.movie.title == mv.title
    end
  end
end
