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

  def reviews
    Review.all.select {|review| review if review.viewer == self}
  end

  def reviewed_movies
    reviews.map {|review| review.movie}
  end
  
  def reviewed_movie?(movie)
    reviewed_movies.any? {|movies| movies == movie} ? true : false
  end

  def rate_movie(movie, rating)
    if reviewed_movie?(movie)
      Review.all.select {|review| review.rating = rating if review.viewer == self && review.movie == movie}
    else
      Review.new(self, movie, rating)
    end
  end
  
end
