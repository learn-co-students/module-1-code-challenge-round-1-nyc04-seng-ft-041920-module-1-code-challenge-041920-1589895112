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
    Review.all.select do |review|
      review.viewer == self
    end
  end

  def reviewed_movies
    self.reviews.collect do |review|
      review.movie
    end
  end

  def reviewed_movie?(movie)
    self.reviewed_movies.any? do |reviewed_movie|
      reviewed_movie == movie
    end
  end

  def rate_movie(movie, rating)
    # if the review does not exist, creates a new review
    if reviewed_movie?(movie) == false
      new_review = Review.new(self, movie, rating)
      new_review
    else
      # if the review does exist, need to access that movie's rating to reassign value
      Review.all.find do |review|
        if review.viewer == self && review.movie == movie
          review.rating = rating
        end
      end
    end
  end
  
end
