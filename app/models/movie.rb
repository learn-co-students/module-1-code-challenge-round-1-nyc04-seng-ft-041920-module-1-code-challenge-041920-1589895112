class Movie
  attr_reader :title, :reviews
  attr_accessor :reviewers, :average_rating

  @@all = []

  def initialize(title)
    @title = title

    @@all << self
  end

  def title
    @title = title
    binding.pry
  end
  
  def reviews
    # returns an array of all the Review instances for the Movie
   newArray = []
   Review.all.select do |review|
    review.movie == self
    # I want to push the reviews into an array
   end
  end

  def reviewers
    # returns an array of all of the Viewer instances that reviewed the Movie
   self.all.select do |review|
    review.reviewer
    # I want to push the movie's reviews into an array
  end

  def average_rating
    # returns the average of all ratings for the Movie instance
    # to average ratings, add all ratings together and divide by the total number of ratings
  end

  def movie.highest_rated
    # eturns the Movie instance with the highest average rating.
  end

  def self.all
    @@all
  end

end
