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

  def reviews #parameter?
    Review.all.select do |viewer|
      viewer.username == self
    end
  end

  def reviewed_movies(username)
    Review.all.select do |viewer| 
      movies.review.username == username
    end
  end

  def reviewed_movie?(movies)
    reviewed_movie = Review.all.select do |viewer|
      movies.all.review.viewer.username == self.username
    end
    reviewed_movie.include?(movies)
  end

  def rate_movie(movie, rating)
    if self.username.reviewed_movie? == false
      self.username.review.new(self, movie, rating)
    else 
      self.username.review.rating = rating
    end
  end
  
end
