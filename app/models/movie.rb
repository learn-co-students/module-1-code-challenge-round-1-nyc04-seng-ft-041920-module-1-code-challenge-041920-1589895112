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
    Review.all.select {|review| review.movie == self}
  end

  def reviewers
    review.map(&:viewers)
  end

  def average_rated
    rating = 0
    all_reviews = review.map {|reviews| rating += reviews.rating}
  end
   rating /= all_reviews.count
  end

  def self.highest_rated
    the_reviews = Review.all.map do |review|
      review 
      the_reviews.sort_by {|review| review.rating.last}
  end

end
