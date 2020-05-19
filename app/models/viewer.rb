class Viewer
  attr_accessor :username

  @@all = []

  def save
    @@all << self
  end

  def initialize(username)
    @username = username
    save
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |rv|
      # binding.pry
      self.username == rv.viewer.username
    end
  end

  def reviewed_movies
    reviews.map do |mv|
      mv.movie
    end
  end

  def reviewed_movie?(movie)
    reviewed_movies.first do |mv|
      mv.title == movie.title
    end
  end

  def reate_movie(movie, rating)
  end
end
