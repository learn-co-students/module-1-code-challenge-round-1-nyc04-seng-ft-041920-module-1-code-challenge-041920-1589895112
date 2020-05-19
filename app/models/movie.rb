class Movie
  attr_accessor :title, :rating

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select { |review| review.movie == self }
  end

  def reviewers
    reviews.map { |review| review.viewer }
  end

  def average_rating
    reviews.reduce(0) { |sum, review| sum + review.rating.to_f } / reviews.length
  end

  def self.highest_rated
    self.all.max_by { |movie| movie.average_rating }
  end

end
