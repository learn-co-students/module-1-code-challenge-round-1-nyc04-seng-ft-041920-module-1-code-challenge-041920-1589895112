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
    reviews.map {|review| review.movie }
  end

  #returns `true` if the `Viewer` has reviewed this `Movie` 
  #(if there is a `Review` instance that has this `Viewer` and `Movie`)
  #returns `false` otherwise
  def reviewed_movie?(movie)
    self.reviews.any? do |review| 
      # binding.pry 
      review.movie == movie
    end
  end

  def rate_movie(movie, rating)

    self.reviews.find{|r| r.movie == movie} ? self.reviews.find{|r| r.movie == movie}.rating = rating : Review.new(self, movie, rating)

  end
  
end
