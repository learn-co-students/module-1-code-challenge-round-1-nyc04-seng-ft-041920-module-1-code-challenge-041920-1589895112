class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.movie == self
    end
  end

  def reviewers
    self.reviews.collect do |review|
      review.viewer
    end
  end

  def average_rating
    total_ratings = self.reviews.sum do |review|
      review.rating
    end
    average = total_ratings / reviews.count
    average
  end

  def self.highest_rated
    Movie.all.max do |movie|
      movie.average_rating 
    end
  end

end
