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
    reviews.map do |review|
      review.viewer
    end
  end

  def average_rating
    Review.all.select do |review|
    review.rating.reduce(0){ |sum,n| sum + n }
    end
  end

end
