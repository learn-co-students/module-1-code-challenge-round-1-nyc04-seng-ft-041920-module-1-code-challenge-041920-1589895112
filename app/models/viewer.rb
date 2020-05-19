require 'pry'
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
    #binding.pry 
    Review.all.select{|review| review.viewer[0] == self}
  end

  def reviewed_movies 
    self.reviews.map{|review| review.movie}
  end 

  def reviewed_movie?(movie)
    reviewed = self.reviews.map{|review| review.movie}.flatten
    reviewed.include?(movie)
  end 

  def rate_movie(movie, rating)
    found_movie = self.reviews.find{|review| review.movie[0] == movie}
    binding.pry 
    found_movie ? found_movie.rating = rating : Review.new(self, movie, rating)
  end 

end
