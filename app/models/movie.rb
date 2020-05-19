class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Reviews.all.select do |reviews|
      reviews.movie == self
    end
  end

  def reviewers 
    reviews.map do |reviews|
      reviews.viewer
    end

  end
 
  # adding ratings and then dividing by number of ratings...
  def average_rating
    sum_rating = Review.all.sum do |review|
      review.rating 
    end

    all_ratings = Review.all.map do |review|
      review.ratings.length
    end

    avg_rating = sum_rating / all_ratings

  end

  def Movie.highest_rated
    average_rating.max_by do |movie|
      # gotta figure out how to return movie with highest avg rating.
    end
  end


end
