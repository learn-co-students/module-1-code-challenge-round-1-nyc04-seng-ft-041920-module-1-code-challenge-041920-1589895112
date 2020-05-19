require "pry"

class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def reviews
    Review.all.select { |review| review.viewer == self }
  end

  def reviewed_movies
    self.reviews.map { |review| review.movie }
  end
  # =============================================================
  # I struggled to return just whether that viewer reviewed that movie or not.
  # I know it's simple but and Ive done it in the past but I can't seem to find the answer now. 
  # I will move on to the next method.
  # =============================================================
  # def reviewed_movie?(movie)
  #   self.reviews.find { |review| p review.movie == movie }
  #   binding.pry
  # end

  # (viewer, movie, rating)
  def rate_movie(movie, rate) 
    # Review.new(self, movie, rate)
    # NOT YET TESTED - 
    Review.all.each do |review|
      if review.movie == movie && review.viewer == self
        review.rating = rate
      else  
        Review.new(self, movie, rate)
      end
    end
    binding.pry
  end

  def self.all
    @@all
  end
  
end
