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
    Review.all.select{|review| review.viewer == self}
  end

  def reviewed_movies
    self.reviews.map{|review| review.movie}
  end

  def reviewed_movie?(movie)
    #check through the viewer's reviewed_movies array
    #to see if any of the movies == movie param
    self.reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    if !reviewed_movie?(movie)
      Review.new(self, movie, rating)
    else
      # find the review instance
      review_inst = self.reviews.find{|review| review.movie == movie}
      # update the rating
      review_inst.rating = rating
    end
  end
  
end
