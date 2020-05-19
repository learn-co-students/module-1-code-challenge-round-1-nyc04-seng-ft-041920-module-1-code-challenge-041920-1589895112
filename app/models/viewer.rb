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
    Review.all.select {|review| review.viewer == self}
  end

  def reviewed_movies
    reviews.map(&:movie)
  end

  def reviewed_movie?(movie)
    review.select {|reviewed| reviewed.viewer == movie}
     if reviewed.viewer == movie
      return true
     else
      false
     end
  end

  def rate_movie(movie, rating)
    if review.map do |review|
      review.movie == movie
      review.rating = rating
    else
      Review.new(movie, self, viewer, rating)
    end
 end

  
  
end
