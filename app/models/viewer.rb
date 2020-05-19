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
    Review.all.find_all {|review| review.viewer == self}
  end

  def reviewed_movies
    self.reviews.collect {|review| review.movie}
  end

  def reviewed_movie? (new_movie)
    self.reviewed_movies.include?(new_movie)
  end

#consider refactoring this one
  def rate_movie(movie, rating)
    if self.reviewed_movie?(movie) == false
      Review.new(self, movie, rating)
    else 
      self.reviews.each do |review|
        if review.movie == movie 
          review.rating = rating
        end
      end
    end
  end
  
end
