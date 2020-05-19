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
    Reviews.all.select do |review|
      review.viewer.all
    end
  end

  def reviewers
    Viewers.all.select do |movie|
      Review.all.movie.include?(movie)
    end
  end

end
