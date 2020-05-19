class Viewer
  attr_accessor :username, :review, :movie

  @@all = []

  def initialize(username)
    @username = username
    @review = review
    @movie = movie

    self.class.all << self
  end

  def self.all
    @@all
  end

  def username
    @username
  end

  def reviews
    Review.all.select do |each_review|
      each_review.viewer
    end
  end




  def reviewed_movies(movie)
      Movie.all.map do |each_movie|
      each_movie.viewer == self && each_movie == movie 
    end
  end

  #(viewer, movie, rating)

  def rate_movie(movie, rating)
    binding.pry
    Review.all.map do |each_review|
      each_review.movie ||= Review.new(self, movie, rating)
      each_review.rating = rating
  end
end

end
